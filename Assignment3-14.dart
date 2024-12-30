import 'dart:io';

void main() {
  bool isLogin = false;
  var mTry = 0;

  while (!isLogin) {
    print("Enter your email:");
    var mEmail = stdin.readLineSync()!;
    print("Enter your Password:");
    var mPassword = stdin.readLineSync()!;

    if (mEmail == "shahzad@gmail.com" && mPassword == "12345") {
      print("Login Successful");
      isLogin = true;
    } else {
      print("Login failed");
      mTry++;
      if (mTry > 3) {
        print("Are you Forgot Password?");
        break; // Exit the loop after prompting for password recovery
      }
    }
  }
}
