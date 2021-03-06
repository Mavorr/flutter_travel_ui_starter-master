import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/widgets/destination_carosel.dart';
import 'package:flutter_travel_ui_starter/widgets/restaurants_carousel.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_travel_ui_starter/widgets/weather_carosel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _selectedIndex =0;
  List<IconData> icons = [
 //   FontAwesomeIcons.archway,
  //  FontAwesomeIcons.drumstickBite,



  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
    child: Container(
      height: 60,
      width: 60.0,
      decoration: BoxDecoration(
        color: _selectedIndex == index ?
    Theme.of(context).accentColor: Color(0xFFE7EBEE),
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Icon(icons
      [index],
        size: 25.0,
        color: _selectedIndex == index
            ? Theme.of(context).primaryColor
            : Color(0xFFB4C1C4),
      ),
    ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 30.0),
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 120.0),
              child: Text('What would you like to see in Warsaw?', style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: icons
                  .asMap()
                  .entries
                  .map(
                    (MapEntry map) => _buildIcon(map.key),
              )
                  .toList(),
            ),
            SizedBox(height: 20.0),
            DestinationCarousel(),
            SizedBox(height: 20.0),
            RestaurantsCarousel(),
            SizedBox(height: 15.0),
            Weather(),

          ],
        ),
      ),
    );
  }
}

