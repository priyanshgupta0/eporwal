import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/link.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:e_porwal/screens/utils/zoom_image.dart';

class BhavanDetails extends StatefulWidget {
  const BhavanDetails({Key? key}) : super(key: key);

  @override
  State<BhavanDetails> createState() => _BhavanDetailsState();
}

class _BhavanDetailsState extends State<BhavanDetails> {
  void launchZoomScreen(int pos) {
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => ZoomScreen(position: pos)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        leading: const BackButton(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
                clipper: MyClipper(),
                child: SizedBox(
                  width: double.infinity,
                  height: 240,
                  child: Image.asset(
                    "assets/images/temple.jpg",
                    fit: BoxFit.cover,
                  ),
                )),
            // ignore: prefer_const_constructors
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(16.0),
              // ignore: prefer_const_constructors
              child: Text(
                "Information",
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(16.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(Icons.play_arrow_outlined, size: 25),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 10),
                  // ignore: prefer_const_constructors
                  Text(
                    "Shri Adinath",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(16.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(Icons.play_arrow_outlined, size: 25),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 10),
                  // ignore: prefer_const_constructors
                  Expanded(
                    flex: 6,
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Vijay Nagar square Indore[M.P.]",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 20,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () {
                        navigateTo(22.7533, 75.8937);
                      },
                      // ignore: prefer_const_constructors
                      child: ImageIcon(
                          AssetImage("assets/images/location-pin.png"),
                          color: Colors.red),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(16.0),
              child: Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: prefer_const_constructors
                  Icon(Icons.play_arrow_outlined, size: 25),
                  // ignore: prefer_const_constructors
                  SizedBox(width: 10),
                  // ignore: prefer_const_constructors
                  Text(
                    "Care Taker :- ",
                    // ignore: prefer_const_constructors
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  // IconButton(onPressed: (){}, icon: icon),
                  // ignore: prefer_const_constructors
                  Expanded(
                    flex: 5,
                    // ignore: prefer_const_constructors
                    child: Text(
                      "Mr. Shubham Jain ",
                      // ignore: prefer_const_constructors
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  // ImageIcon(
                  //   AssetImage("assets/images/googlemaps.5.jpeg"),
                  //   size: 20,
                  //   ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: const [
                  Icon(Icons.play_arrow_outlined, size: 25),
                  SizedBox(width: 10),
                  Text(
                    "Mobile Number :- 9999999999 ",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: SizedBox(
                height: 200,
                //width: 200,
                child: GridView(
                  // ignore: prefer_const_constructors
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    InkWell(
                      onTap: () {
                        launchZoomScreen(0);
                      },
                      child: Card(
                        child: Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            // ignore: prefer_const_constructors
                            image: DecorationImage(
                              // ignore: prefer_const_constructors
                              image: AssetImage("assets/images/538356762.jpg"),
                              //fit: BoxFit.fitWidth,
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        launchZoomScreen(1);
                      },
                      child: Card(
                        child: Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            // ignore: prefer_const_constructors
                            image: DecorationImage(
                              // ignore: prefer_const_constructors
                              image: AssetImage("assets/images/newtemple.jpg"),
                              //fit: BoxFit.fitWidth,
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        launchZoomScreen(2);
                      },
                      child: Card(
                        child: Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            // ignore: prefer_const_constructors
                            image: DecorationImage(
                              // ignore: prefer_const_constructors
                              image: AssetImage("assets/images/58-1.jpg"),
                              //fit: BoxFit.fitWidth,
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        launchZoomScreen(3);
                      },
                      child: Card(
                        child: Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            // ignore: prefer_const_constructors
                            image: DecorationImage(
                              // ignore: prefer_const_constructors
                              image: AssetImage("assets/images/imagefour.jpg"),
                              //fit: BoxFit.fitWidth,
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        launchZoomScreen(4);
                      },
                      child: Card(
                        child: Container(
                          // ignore: prefer_const_constructors
                          decoration: BoxDecoration(
                            // ignore: prefer_const_constructors
                            image: DecorationImage(
                              // ignore: prefer_const_constructors
                              image:
                                  AssetImage("assets/images/jain-bhavan-1.jpg"),
                              //fit: BoxFit.fitWidth,
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 80,
              width: 350,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: ElevatedButton(
                  onPressed: () {
                    navigateTo(22.7533, 75.8937);
                  },
                  child: const Text("View On Map"),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

void navigateTo(double lat, double lng) async {
  var uri =
      Uri.parse("https://www.google.com/maps/search/?api=1&query=$lat,$lng");
  if (await canLaunch(uri.toString())) {
    await launch(uri.toString());
  } else {
    throw 'Could not launch ${uri.toString()}';
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 30);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
