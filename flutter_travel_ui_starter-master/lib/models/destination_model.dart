import 'package:flutter_travel_ui_starter/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;
  List<Activity2> activities2;


  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
    this.activities2,

  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: ' Warsaw Old Town (Polish: Stare Miasto and colloquially as Starówka) is the oldest part of Warsaw, the capital city of Poland. '
        'It is bounded by the Wybrzeże Gdańskie (Gdańsk Boulevards), along with the bank of the Vistula river, Grodzka, Mostowa and Podwale Streets. '
        'It is one of the most prominent tourist attractions in Warsaw. The heart of the area is the Old Town Market Place, rich in restaurants, cafés and shops. '
        'Surrounding streets feature medieval architecture such as the city walls, St. John\'s Cathedral and the Barbican which links the Old Town with Warsaw New Town.',
    type: 'Sightseeing Tour',
    startTimes: ['00:00 am', '12:00 pm'],
    rating: 5,
    price: 30,
  ),

];
List<Activity> activities2 = [
  Activity(
    imageUrl: 'assets/images/lazienki.jpg',
    name: 'Łazienki Park or Royal Baths Park (Polish: Park Łazienkowski, Łazienki Królewskie) is the largest park in Warsaw, Poland,'
        ' occupying 76 hectares of the city center.'
        ' The park-and-palace complex lies in Warsaw\'s central district (Śródmieście) on Ujazdów Avenue,'
        ' which is part of the Royal Route linking the Royal Castle with Wilanów Palace to the south. North of Łazienki Park, on the other side of Agrykola Street, stands Ujazdów Castle.'
        ' Originally designed in the 17th century as a baths park for nobleman Stanisław Herakliusz Lubomirski, in the 18th century Łazienki was transformed by Poland\'s last monarch, Stanisław II Augustus, into a setting for palaces, villas, classicist follies, and monuments. In 1918 it was officially designated a public park.'
        ' Łazienki is visited by tourists from all over Poland and the world, and serves as a venue for music, the arts, and culture. The park is also home to peacocks and a large number of squirrels.',
    type: 'Sightseeing Tour',
    startTimes: ['00:00 am', '12:00 pm'],
    rating: 5,
    price: 30,
  ),


];


List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/oldtown.jpg',
    city: 'Old Town',
    country: '',
    description: 'Visit Warsaw Old Town the oldest part of Warsaw.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/lazienki.jpg',
    city: 'Royal Baths Park',
    country: '',
    description: 'Visit Royal Baths the largest park in Warsaw.',
    activities: activities2,
  ),
  Destination(
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/saopaulo.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/newyork.jpg',
    city: 'New York City',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: activities,
  ),
];
