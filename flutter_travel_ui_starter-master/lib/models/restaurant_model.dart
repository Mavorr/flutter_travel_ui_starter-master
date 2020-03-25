class Restaurant {
  String imageUrl;
  String name;
  String address;
  int price;

  Restaurant({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
  });
}

final List<Restaurant> restaurants = [
  Restaurant(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Hotel 0',
    address: '404 Great St',
    price: 175,
  ),
  Restaurant(
    imageUrl: 'assets/images/hotel1.jpg',
    name: 'Hotel 1',
    address: '404 Great St',
    price: 300,
  ),
  Restaurant(
    imageUrl: 'assets/images/hotel2.jpg',
    name: 'Hotel 2',
    address: '404 Great St',
    price: 240,
  ),
];
