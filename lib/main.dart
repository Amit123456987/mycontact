// For hot reload to work we need to have a stateful and stateless widget(Everything inside it)
// type "stless" -> for statelessWidgetBoiler Plate

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());


// Boilerplate code
class MyApp extends StatelessWidget {

  // build is called automatically
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('    Contact Amit!!!'),backgroundColor: Colors.red[800],),
        body:
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                AvatarGlow(
                  glowColor: Colors.pink[700],
                  startDelay: Duration(microseconds: 0),
                  repeatPauseDuration: Duration(microseconds: 100),
                  endRadius: 100,
                  child: CircleAvatar(
                      radius: 50.0,
                      backgroundImage: AssetImage('Images/Amit.jpg'),
                  ),
                ),
                Text(
                  'Amit Maurya',
                  style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40,
                    color: Colors.pink[700],
                    shadows:[Shadow(
                      blurRadius: 20.0,
                      color: Colors.pink[300],
                      offset: Offset(1.0, 1.0),
                    ),
                    ],
                  ),
                ),
                Text(
                    'FLUTTER DEVELOPER',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 25,
                    color: Colors.pink[300],
                    shadows: [
                      Shadow(
                        blurRadius: 20.0,
                        color: Colors.pink[200],
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
                Container(
                   color: Colors.red[900],
                   padding: EdgeInsets.all(10.0),
                   margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                   child:Row(
                     children: <Widget>[
                       Icon(
                        Icons.stay_primary_portrait,
                        size: 40,
                        color: Colors.white,
                       ),
                       Text( '  8800158242',
                       style:TextStyle(
                           fontFamily: 'SourceSansPro',
                           fontSize: 35,
                           color: Colors.white,
                       ),
                       ),
                     ],
                   )
                   ),
                Container(
                    color: Colors.red[900],
                    padding: EdgeInsets.all(10.0),
                    margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 25.0),
                    child:Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text( '  amitmaurya11042000@gmail.com',
                          style:TextStyle(
                            fontFamily: 'SourceSansPro',
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
      ),
    );
  }
}
