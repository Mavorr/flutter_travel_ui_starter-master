import 'package:google_maps_flutter/google_maps_flutter.dart';

class Restaurant {
  String imageUrl;
  String name;
  String address;
  int price;
  String url;
  LatLng location;

  Restaurant({
    this.imageUrl,
    this.name,
    this.address,
    this.price,
    this.url,
    this.location,
  });
}

final List<Restaurant> restaurants = [
  Restaurant(
    imageUrl: 'assets/images/zapiecek.jpg',
    name: 'Zapiecek',
    address: 'Świętojańska 13',
    price: 30,
    url: 'https://pl.tripadvisor.com/Restaurant_Review-g274856-d1069242-Reviews-Restauracja_Zapiecek-Warsaw_Mazovia_Province_Central_Poland.html',

  ),
  Restaurant(
    imageUrl: 'assets/images/zascianek.jpg',
    name: 'Zaścianek',
    address: 'Nowogrodzka 40',
    price: 30,
      url: 'https://pl.tripadvisor.com/Restaurant_Review-g274856-d3645077-Reviews-Zascianek-Warsaw_Mazovia_Province_Central_Poland.html',
  ),
  Restaurant(
    imageUrl: 'assets/images/gosciniec.jpg',
    name: 'Gościniec',
    address: 'Nowy Świat 41',
    price: 30,
      url: 'https://pl.tripadvisor.com/Restaurant_Review-g274856-d9595688-Reviews-Gosciniec_Polskie_Pierogi-Warsaw_Mazovia_Province_Central_Poland.html',
  ),
];
