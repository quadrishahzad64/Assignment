void main() {
  List<String> names = [
    'Bilal',
    'Karim',
    'Amin',
    'Bilal',
    'Salman',
    'Amin',
    'shahzad'
  ];
  List<String> uniqueNames = names.toSet().toList();
  print('Unique names: $uniqueNames');
}
