import 'package:flutter/material.dart';
import 'package:baptist_hymnal/screens/english_hymn.dart';
import 'package:baptist_hymnal/screens/yoruba_hymn.dart';
import 'package:baptist_hymnal/screens/responsive_reading.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final hymnalCategory = ['English Hymnal', 'Yoruba Hymnal', 'Reading'];

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green.shade300,
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'BAPTIST HYMNAL',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 23,
                      fontFamily: 'Alata',
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(children: <Widget>[
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EnglishHymns()),
                    );
                  },
                  child: Container(
                    height: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.blue,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/hymnal2.jpg',
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(
                                8,
                                10,
                              ),
                              blurRadius: 20.0)
                        ]),
                  ),
                ),
                Positioned(
                  left: 24,
                  bottom: 20,
                  child: Text(
                    'English Hymns',
                    style: TextStyle(
                      fontFamily: 'Alata',
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      letterSpacing: 1.2,
                    ),
                  ),
                )
              ]),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => YorubaHymns()),
                  );
                },
                child: Stack(children: <Widget>[
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.blue,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black26, BlendMode.darken),
                          fit: BoxFit.cover,
                          image: AssetImage(
                            'assets/images/hymnal3.jpg',
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(
                                8,
                                10,
                              ),
                              blurRadius: 20.0)
                        ]),
                  ),
                  Positioned(
                    left: 24,
                    bottom: 20,
                    child: Text(
                      'Yoruba Hymns',
                      style: TextStyle(
                        fontFamily: 'Alata',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ResponsiveReading()));
                },
                child: Stack(children: <Widget>[
                  Container(
                    height: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.blue,
                        image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black26, BlendMode.darken),
                          fit: BoxFit.cover,
                          alignment: Alignment.bottomCenter,
                          image: AssetImage(
                            'assets/images/hymnal1.jpg',
                          ),
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black54,
                              offset: Offset(
                                8,
                                10,
                              ),
                              blurRadius: 20.0)
                        ]),
                  ),
                  Positioned(
                    left: 24,
                    bottom: 20,
                    child: Text(
                      'Resonsive Reading',
                      style: TextStyle(
                        fontFamily: 'Alata',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  )
                ]),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
