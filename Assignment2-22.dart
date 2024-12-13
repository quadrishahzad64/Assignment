void main() {
  Map<String, int> shoppingCart = {'Banana': 3, 'Apple': 2, 'Milk': 1};
  if (shoppingCart.containsKey('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }
}
