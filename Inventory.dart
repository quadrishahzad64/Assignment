import 'dart:io';
import 'Clients.dart';
import 'dart:convert'; // For jsonDecode

void inventory(String? username) {
  if (username == null) {
    print("No user logged in. Cannot access inventory.");
    return;
  }
  // Define the inventory list with proper values
  //------------------------------------------------------

  File file = File('myInventory.json');
  String jsonString = file.readAsStringSync();
  List<Map<String, dynamic>> myInventory =
      List<Map<String, dynamic>>.from(jsonDecode(jsonString));

  //--------------------------------------------------------
  bool continueLoop = true;

  while (continueLoop) {
    double totalQty = 0;
    double totalAmt = 0;

    print("Inventory for $username:");

    for (var item in myInventory) {
      if (username == item['email']) {
        double cAmt = item['cQty'] * item['cRate'];
        print("=============================================================");
        print(
            "Item: ${item['cName']}, Quantity: ${item['cQty']}, Rate: ${item['cRate']}, Amount: \$${cAmt}");
        print("=============================================================");

        totalQty += item['cQty'];
        totalAmt += cAmt;
      }
    }

    // Print the totals
    print("Total Quantity: $totalQty");
    print("Total Amount:   ${totalAmt}");

    print(
        "******************************************************************************");

    print(
        "Do you want to Buy, Sale, or exit? Enter B for Buy, S for Sale, or E to exit:");

    String bsAns = stdin.readLineSync()!.toUpperCase();

    if (bsAns == 'B') {
      if (totalAmt >= 10000) {
        print(
            "******************************************************************************");
        print(
            "                                           Warning you ...Exceed your Limit ");
        print(
            "******************************************************************************");

        continue;
      }

      print("Adding new inventory item for $username:");

      print("Enter Company Name: ");
      String ccName = stdin.readLineSync() ?? '';
      while (ccName.isEmpty || ccName.contains(RegExp(r'[0-9]'))) {
        print("Enter Company Name: ");
        ccName = stdin.readLineSync() ?? '';
      }

      print("Enter Quantity: ");
      double ccQty = double.tryParse(stdin.readLineSync() ?? '') ?? 0;

      while (ccQty == 0) {
        print("Enter Quantity: ");
        ccQty = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
      }

      print("Enter Rate: ");
      double ccRate = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
      while (ccRate == 0) {
        print("Enter Rate: ");
        ccRate = double.tryParse(stdin.readLineSync() ?? '') ?? 0;
      }

      // Create a new inventory item map
      Map<String, dynamic> newItem = {
        'email': username,
        'cName': ccName.toUpperCase(),
        'cQty': ccQty,
        'cRate': ccRate,
      };
      //________________________________________
      myInventory.add(newItem);
      try {
        String updatedJsonString = jsonEncode(myInventory);
        file.writeAsStringSync(updatedJsonString);
        print('Data successfully written to myInventory.json');
      } catch (e) {
        print('An error occurred while writing to the file: $e');
      }

//-----------------------------------------
      // Update total amount after adding new item
      totalAmt += ccQty * ccRate;

      print("New inventory item added successfully!");
    } else if (bsAns == 'S') {
      print("Which item do you want to Sale? Enter Name of Company:");

      String sAns = stdin.readLineSync()!.toUpperCase();

      myInventory.removeWhere((item) =>
          item['email'] == username && item['cName'].toUpperCase() == sAns);

      print("$sAns has been removed from your inventory.");
    } else if (bsAns == 'E') {
      continueLoop = false; // Exit the loop
    } else {
      print("Invalid option. Please try again.");
    }
  }
}

void main() {
  List<Map<String, dynamic>> clients = [];

  String? username = authenticateUser(clients);
  inventory(username);
}
