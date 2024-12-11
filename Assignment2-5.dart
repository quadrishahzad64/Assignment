void main() {
  Map<String, String> contacts = {
    'Bilal Rehman': '1234',
    'Anna': '5679',
    'Salim': '9012',
    'Zulfiqar': '3456',
    'Karim': '7894',
    'Asad': '2341'
  };
  Iterable<String> fourLetterNames =
      contacts.keys.where((name) => name.length == 4);

  fourLetterNames.forEach((name) {
    print('$name: ${contacts[name]}');
  });
}
