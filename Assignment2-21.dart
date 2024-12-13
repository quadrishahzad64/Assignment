void main() {
  Map<String, dynamic> user = {
    'name': 'Syed Shahzad',
    'isAdmin': true,
    'isActive': true
  };
  if (user['isAdmin'] == true && user['isActive'] == true) {
    print('${user['name']} is active');
  } else {
    print('Not an active admin');
  }
}
