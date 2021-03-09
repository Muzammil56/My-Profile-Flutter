import 'package:flutter/material.dart';
import 'package:mi_card_app/my_flutter_app_icons.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MiCard()
  );
}

class MiCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage("images/IMG.jpg"),
                radius: 80.0,
              ),
              Text(
                  "Leo Mughal ",
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 40.0,
                        color: Colors.white
                      ),
              ),
              Text(
                "FLUTTER DEVELOPER",
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 25.0,
                  color: Colors.teal.shade50,
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  thickness: 1.0,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                      Icons.call,
                      color: Colors.teal,
                  ),
                  title: Text(
                      "+92 311 4543974",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                      color: Colors.teal.shade700,
                      fontFamily: "SourceSansPro",
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "mmhm61@gmail.com",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.teal.shade700,
                      fontFamily: "SourceSansPro",
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    Icons.location_on,
                    color: Colors.teal,
                  ),
                  title: Text(
                    "Meharpura Bara Dri Road Beghumkoat Shahdra Lahore",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.teal.shade700,
                      fontFamily: "SourceSansPro",
                      fontSize: 20.0,
                    ),
                  ),
                  onTap: () => launch("https://www.google.com/maps/place/31%C2%B036'38.0%22N+74%C2%B016'19.4%22E/@31.6100663,74.2734211,16z/data=!4m5!3m4!1s0x0:0x0!8m2!3d31.610554!4d74.272048"),
                ),
              ),
              Card(
                color: Colors.white,                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: ListTile(
                  leading: Icon(
                    MyFlutterApp.facebook,
                    color: Colors.teal,
                  ),
                  title: Text( "Facebook Profile" ,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.teal.shade700,
                      fontFamily: "SourceSansPro",
                      fontSize: 20.0,
                    ),
                  ),
                  onTap: () => launch('https://www.facebook.com/leo.mughal66/'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

