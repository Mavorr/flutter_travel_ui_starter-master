import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/destination_model.dart';
import 'package:flutter_travel_ui_starter/screens/destination_screen.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {

  var temp;
  var description;
  var currently;
  var humidity;
  var windSpeed;

  Future getWeather () async{
    http.Response response = await http.get("http://api.openweathermap.org/data/2.5/weather?q=Warsaw&appid=f4dd2be88f1ac1020c582d48f5190900&units=metric");
    var results = jsonDecode(response.body);
    setState(() {
      this.temp =results['main']['temp'];
      this.description = results['weather'][0]['description'];
      this.currently = results['weather'][0]['main'];
      this.humidity = results['main']['humidity'];
      this.windSpeed = results['wind']['speed'];
    });
  }

@override
void initState(){
super.initState();
this.getWeather();
}
  @override
  Widget build(BuildContext context) {
    return Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 5.0),
            height: MediaQuery.of(context).size.height /6,
            width: MediaQuery.of(context).size.width ,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.circular(30.0),

            ),
                 child: Padding(
                 padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                      'Currently in Warasaw',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.9,
                        fontWeight: FontWeight.w600,
                      ),
                  ),
                ),
                  Text(
                temp != null? temp.toString() + "\u00B0" +"C": "Loading",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.w600
                      ),
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    currently != null? currently.toString(): "Loading",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.9,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ),
        ],
      );
  }
}

