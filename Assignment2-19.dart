void main() {
  List mainPro = [
    {
      'name': 'LCD',
      'price': 50000,
      'quantity': 0,
    },
    {
      'name': 'TV',
      'price': 10000,
      'quantity': 15,
    }
  ];

  if (mainPro[0]['quantity'] > 0) {
    print('LCDs are in stock');
  } else {
    print('LCDs are of stock');
  }

  if (mainPro[1]['quantity'] > 0) {
    print('Tvs are in stock');
  } else {
    print('TVs are of stock');
  }
}
