import 'dart:io';
import 'Clients.dart';
import 'dart:convert';

void main() {
  File file = File('clients.json');
  String jsonString = file.readAsStringSync();
  List<Map<String, dynamic>> clients =
      List<Map<String, dynamic>>.from(jsonDecode(jsonString));
  print("============================================");
  print("   Welcome to Stock Trading Platform        ");
  print("============================================");
  print("                                            ");
  print("                                            ");
  print("============================================");
  print(".........We Entertain Following.............");
  print("============================================");
  print("            Individual                      ");
  print("            High-Net Worth                  ");
  print("            Coporate Clients                ");
  print("============================================");
  print("   We Deal in Buying and Selling of Shares  ");
  print("============================================");
  authenticateUser(clients);
}
