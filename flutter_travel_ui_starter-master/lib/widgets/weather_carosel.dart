import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/destination_model.dart';
import 'package:flutter_travel_ui_starter/screens/destination_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height /3,
            width: MediaQuery.of(context).size.width ,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(10.0)
            ),

            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Currently in Warasaw',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.9,
                          fontWeight: FontWeight.w600,
                        )
                  ),
                ),
                  Text(
                  "Rain",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600
    ),
                  ),
              ],

            ),

          ),
        ],
      );

  }
}

