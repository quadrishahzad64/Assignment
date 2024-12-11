void main() {
  // Create a nested map structure for world countries
  Map<String, Map<String, dynamic>> world = {
    'USA': {
      'capitalCity': 'Washington D.C.',
      'currency': 'US Dollar',
      'language': 'English'
    },
    'France': {
      'capitalCity': 'Paris',
      'currency': 'Euro',
      'language': 'French'
    },
    'Japan': {
      'capitalCity': 'Tokyo',
      'currency': 'Japanese Yen',
      'language': 'Japanese'
    },
    'Brazil': {
      'capitalCity': 'Brasília',
      'currency': 'Brazilian Real',
      'language': 'Portuguese'
    }
  };

  print('France Details:');
  String selectedCountry = 'Brazil';

  print('Capital City: ${world[selectedCountry]!['capitalCity']}');
  print('Currency: ${world[selectedCountry]!['currency']}');
  print('language: ${world[selectedCountry]!['language']}');

  print('\nAll Countries:');
  world.forEach((country, details) {
    print('$country:');
    details.forEach((key, value) {
      print('  $key: $value');
    });
    print('---');
  });
}
