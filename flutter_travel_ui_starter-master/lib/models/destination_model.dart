import 'package:flutter_travel_ui_starter/models/activity_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  String location;
  List<Activity> activities;
  List<Activity> activities2;
  List<Activity> activities3;
  List<Activity> activities4;
  List<Activity> activities5;
  List<Activity> activities6;



  Destination({
    this.imageUrl,
    this.city,
    this.country,
    this.description,
    this.activities,
    this.location,

  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/oldtown.jpg',
    name: ' Warsaw Old Town (Polish: Stare Miasto and colloquially as Starówka) is the oldest part of Warsaw, the capital city of Poland. '
        'It is bounded by the Wybrzeże Gdańskie (Gdańsk Boulevards), along with the bank of the Vistula river, Grodzka, Mostowa and Podwale Streets. '
        'It is one of the most prominent tourist attractions in Warsaw. The heart of the area is the Old Town Market Place, rich in restaurants, cafés and shops. '
        'Surrounding streets feature medieval architecture such as the city walls, St. John\'s Cathedral and the Barbican which links the Old Town with Warsaw New Town.',
    type: 'Sightseeing Tour',
    startTimes: ['00:00 am', '12:00 pm'],

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
    startTimes: ['06:00 am', '9:30 pm'],
  ),


];
List<Activity> activities3 = [
  Activity(
    imageUrl: 'assets/images/rising.jpg',
    name: 'The Warsaw Uprising Museum (named Warsaw Rising Museum, Polish: Muzeum Powstania Warszawskiego), in the Wola district of Warsaw, Poland, is dedicated to the Warsaw Uprising of 1944. '
    'The institution of the museum was established in 1983, but no construction work took place for many years. It opened on July 31, 2004, marking the 60th anniversary of the uprising.'
    'The museum sponsors research into the history of the uprising, and the history and possessions of the Polish Underground State. It collects and maintains hundreds of artifacts — ranging from weapons used by the insurgents to love letters — to present a full picture of the people involved.'
    'The museum\'s stated goals include the creation of an archive of historical information on the uprising and the recording of the stories and memories of living participants.'
    'Its director is Jan Ołdakowski, with historian Dariusz Gawin from the Polish Academy of Sciences as his deputy.'
        'The museum is a member organisation of the Platform of European Memory and Conscience.',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am', '18:00 pm'],
  ),

];
List<Activity> activities4 = [
  Activity(
    imageUrl: 'assets/images/palack.jpg',
    name: 'Palace of Culture and Science (Pałac Kultury i Nauki; abbreviated PKiN), is a notable high-rise building in central Warsaw, Poland.'
        'With a total height of 237 metres (778 ft) it is the tallest building in Poland, the 5th-tallest building in the European Union (including spire) and one of the tallest on the European continent. '
        'Constructed in 1955, it houses various public and cultural institutions such as cinemas, theatres, libraries, sports clubs, university faculties and authorities of the Polish Academy of Sciences. '
        'Since 2007 it has been enlisted in the Registry of Objects of Cultural Heritage.',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am', '8:00 pm'],
  ),

];

List<Activity> activities5 = [
  Activity(
    imageUrl: 'assets/images/jewmuseum.jpg',
    name: 'POLIN Museum of the History of Polish Jews (Polish: Muzeum Historii Żydów Polskich) is a museum on the site of the former Warsaw Ghetto. '
        'The Hebrew word Polin in the museum\'s English name means either "Poland" or "rest here" and relates to a legend about the arrival of the first Jews to Poland.'
        'The museum\'s cornerstone was laid in 2007, and the museum opened on 19 April 2013. The core exhibition opened in October 2014 and features a multimedia exhibition about the Jewish community that flourished in Poland for a thousand years up to the World War II Holocaust.'
        'The building, a postmodern structure in glass, copper, and concrete, was designed by Finnish architects Rainer Mahlamäki and Ilmari Lahdelma.',
    type: 'Sightseeing Tour',
    startTimes: ['10:00 am', '6:00 pm'],
  ),

];

List<Activity> activities6 = [
  Activity(
    imageUrl: 'assets/images/WilanowPalace.jpg',
    name: 'Wilanów Palace  is a royal palace located in the Wilanów district, Warsaw. Wilanów Palace survived Poland\'s partitions and both World Wars, and so serves as a reminder of the culture of the Polish state as it was before the misfortunes of the 18th century.'
        'It is one of Poland\'s most important monuments. The Palace\'s museum, established in 1805, is a repository of the country\'s royal and artistic heritage and receives around 3 million visitors annually. The palace and park in Wilanów hosts cultural events and concerts, including Summer Royal Concerts in the Rose Garden and the International Summer Early Music Academy.'
        'The palace, together with other elements of Warsaw Old Town, is one of Poland\'s official national Historic Monuments (Pomnik historii), as designated on 16th September 1994. Its listing is maintained by the National Heritage Board of Poland.'
        'Since 2006, the palace has been a member of the international association of European Royal Residences.',
    type: 'Sightseeing Tour',
    startTimes: ['9:30 am', '9:00 pm'],
  ),

];





List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/oldtown.jpg',
    city: 'Old Town',
    country: '',
    description: 'Visit Warsaw Old Town the oldest part of Warsaw.',
    location: 'https://goo.gl/maps/XUBCype4nrscHiXd7',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/lazienki.jpg',
    city: 'Royal Baths Park',
    country: '',
    description: 'Visit Royal Baths the largest park in Warsaw.',
    location: 'https://goo.gl/maps/YFBPvhAY5teiiec2A',
    activities: activities2,
  ),
  Destination(
    imageUrl: 'assets/images/rising.jpg',
    city: 'The Warsaw Uprising',
    country: '',
    description: 'The Museum is dedicated to the Warsaw Uprising of 1944.',
    location: 'https://goo.gl/maps/qRK9Ji7Uw2SNXk3V9',
    activities: activities3,
  ),
  Destination(
    imageUrl: 'assets/images/palack.jpg',
    city: 'Palace of Culture',
    country: '',
    description: 'Palace of Culture and Science, is a notable high-rise building.',
    location: 'https://goo.gl/maps/tVLnFDUnpAbSAR1K9',
    activities: activities4,
  ),

  Destination(
    imageUrl: 'assets/images/jewmuseum.jpg',
    city: 'POLIN Museum',
    country: '',
    description: 'Museum of the History of Polish Jews.',
    location: 'https://goo.gl/maps/8wThKLuGjtNrT8y17',
    activities: activities5,
  ),

  Destination(
    imageUrl: 'assets/images/WilanowPalace.jpg',
    city: 'Wilanów Palace',
    country: '',
    description: 'Royal palace located in the Wilanów district, Warsaw',
    location: 'https://goo.gl/maps/J61EXik8r5acLoWa9',
    activities: activities6,
  ),

];
