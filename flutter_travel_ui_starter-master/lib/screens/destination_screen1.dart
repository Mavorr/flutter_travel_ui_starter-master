import 'package:flutter/material.dart';
import 'package:flutter_travel_ui_starter/models/activity_model.dart';
import 'package:flutter_travel_ui_starter/models/destination_model.dart';
import 'package:flutter_travel_ui_starter/widgets/googlemaps_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {

  final Destination destination;

  DestinationScreen({this.destination});
  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: <Widget>[
        Stack(children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 2.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Hero(
              tag: widget.destination.imageUrl,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30.0),
                child: Image(
                  image: AssetImage(widget.destination.imageUrl),
                  fit: BoxFit.cover,

                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
            child: Row(children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                iconSize: 30.0,
                color: Colors.black,
                onPressed: () => Navigator.pop(context),
              ),
            ],
              ),
          ),
          Positioned(
            left: 20.0,
            bottom: 20.0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.destination.city,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35.0,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1.2,
                  ),
                ),
                Row(
                  children: <Widget>[
                    Icon(
                      FontAwesomeIcons.locationArrow,
                      size: 15.0,
                      color: Colors.white,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      widget.destination.country,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: 20.0,
            bottom: 20.0,
            child:  Row(children: <Widget>[
              IconButton(
    icon: Icon(Icons.location_on),
              color: Colors.white70,
              iconSize: 25.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Map()),
                );
              },
            ),
    ],
          ),
          ),
        ],

        ),
        Expanded(
          child: ListView.builder(
              itemCount: widget.destination.activities.length,
              itemBuilder: (BuildContext context, int index) {
                Activity activity = widget.destination.activities[index];
                return Stack(
                  children: <Widget>[
                    Container(margin: EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
                      height: 500.0,
                      width: double.infinity,
                      decoration: BoxDecoration(color: Colors.white,
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      child: Column(children: <Widget>[
                        Row(children: <Widget>[
                          Flexible(
                            child: Text(' Warsaw Old Town (Polish: Stare Miasto and colloquially as Starówka) is the oldest part of Warsaw, the capital city of Poland. '
                                'It is bounded by the Wybrzeże Gdańskie (Gdańsk Boulevards), along with the bank of the Vistula river, Grodzka, Mostowa and Podwale Streets. '
                                'It is one of the most prominent tourist attractions in Warsaw. The heart of the area is the Old Town Market Place, rich in restaurants, cafés and shops. '
                                'Surrounding streets feature medieval architecture such as the city walls, St. John\'s Cathedral and the Barbican which links the Old Town with Warsaw New Town.'),
                          )

                        ],
                        ),
                        SizedBox(height: 10.0),
                        Row(children: <Widget>[
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              activity.startTimes[0],
                            ),
                          ),
                          SizedBox(width: 10.0),
                          Container(
                            width: 70.0,
                            decoration: BoxDecoration(color: Theme.of(context).accentColor,
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              activity.startTimes[1],
                            ),
                          ),
                        ],
                        ),
                      ],
                      ),
                    ),
                  ],
                );
              }
          ),
        ),
      ],
      ),
    );

  }
}
