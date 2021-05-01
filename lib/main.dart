import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Portfolio(),
    );
  }
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [
            Colors.blue,
            Colors.blue[100],
          ],
        )),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 45.0, horizontal: 45),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                color: Colors.transparent,
                child: Center(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFAFAFA),
                      borderRadius: BorderRadius.circular(150),
                    ),
                    height: 200,
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(500),
                          child: Image.asset('asset/pngegg.png')),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 50),
              Container(
                width: double.infinity,
                color: Colors.transparent,
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        'Yosola Adekanmbi O.',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Flutter Developer',
                        style: TextStyle(
                          fontSize: 28,
                          color: Colors.blue[800],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "I provide expert services in Mobile applications development using the Google Flutter framework which covers both the Android and IOS platforms.\n\nFeel free to contact me so we start discussing your project",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 50),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircleAvatar(
                              backgroundColor: Colors.blue[800],
                              radius: 25,
                              child: Icon(
                                Icons.email,
                                color: Colors.white,
                              )),
                          SizedBox(width: 30),
                          CircleAvatar(
                              backgroundColor: Colors.blue[800],
                              radius: 25,
                              child: Icon(
                                Icons.call,
                                color: Colors.white,
                              )),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
