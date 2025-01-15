import 'dart:io';
import 'Inventory.dart';

authenticateUser(List<Map<String, dynamic>> clients) {
  const int maxAttempts = 3;
  int attempts = 0;

  while (attempts < maxAttempts) {
    print("Enter Client Email:");
    String username = stdin.readLineSync() ?? "".toUpperCase();

    print("Enter Client Password:");
    String passwordInput = stdin.readLineSync() ?? "";

    bool loginSuccessful = false;

    for (var client in clients) {
      if (client['email'] == username && client['password'] == passwordInput) {
        print("Login Successful");
        print(
            "Welcome ${client['userName']} You are our ${client['userStatus']} Client! and your Limit is ${client['userLimit']} ");
        loginSuccessful = true;
        inventory(username); // Exit loop on successful login
      }
    }

    if (loginSuccessful) {
      return username;
    } else {
      attempts++;
      print("Login Failed. Attempt ${attempts} of $maxAttempts.");

      if (attempts == maxAttempts) {
        print("Maximum login attempts reached. Exiting...Please Contact Admin");
        exit(0);
      }
    }
  }
}
