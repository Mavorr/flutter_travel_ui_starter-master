import 'package:google_maps_flutter/google_maps_flutter.dart';

class Destination {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Destination(
      {this.shopName,
        this.address,
        this.description,
        this.thumbNail,
        this.locationCoords});
}

final List<Destination> destination = [
  Destination(
      shopName: 'Old Town',
      address: 'rynek Starego Miasta',
      description:
      'Visit Warsaw Old Town the oldest part of Warsaw.',
      locationCoords: LatLng(52.249722, 21.012222),
      thumbNail: 'assets/images/oldtown.jpg'
  ),
  Destination(
      shopName: 'Royal Baths Park',
      address: 'ul. Agrykola 1',
      description:
      'Visit Royal Baths the largest park in Warsaw.',
      locationCoords: LatLng(52.214444, 21.031667),
      thumbNail: 'assets/images/lazienki.jpg'
  ),
  Destination(
      shopName: 'The Warsaw Uprising',
      address: 'ul. Grzybowska 79',
      description:'The Museum is dedicated to the Warsaw Uprising of 1944.',
      locationCoords: LatLng(52.232222, 20.980833),
      thumbNail: 'assets/images/rising.jpg'
  ),
  Destination(
      shopName: 'Palace of Culture and Science',
      address: 'Plac Defilad 1',
      description: 'Palace of Culture and Science (Pałac Kultury i Nauki), is a notable high-rise building in central Warsaw, Poland.',
      locationCoords: LatLng(52.231667, 21.006389),
      thumbNail: 'assets/images/palack.jpg'
  ),

];