// ignore_for_file: prefer_const_constructors

import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../drawer/bhavan_details.dart';

class business2 extends StatefulWidget {
  const business2({Key? key}) : super(key: key);

  @override
  State<business2> createState() => _business2State();
}

class _business2State extends State<business2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            // ignore: prefer_const_literals_to_create_immutables
            Stack(children: <Widget>[
              const Image(
                // ignore: unnecessary_const
                image: const AssetImage(
                  "assets/images/background.jpg",
                ),
                width: double.infinity,
                fit: BoxFit.fill,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 120),
                // ignore: unnecessary_const
                child: const Center(
                  child: Card(
                    elevation: 40,
                    child: Image(
                      image: AssetImage("assets/images/Business1.png"),
                      height: 150,
                    ),
                  ),
                ),
              ),
            ]),
            SizedBox(
              height: MediaQuery.of(context).size.width / 16,
            ),
            // ignore: prefer_const_constructors
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: FittedBox(
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // ignore: prefer_const_literals_to_create_immutables
                              children: [
                                const Text(
                                  "Business_Name",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                ),
                                const Text(
                                  "Business_details",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 24),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 4,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Image(
                                    image: AssetImage(
                                        "assets/images/inquire_now.png"),
                                    height: 30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: FittedBox(
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    height:
                                        MediaQuery.of(context).size.width / 12,
                                    color: Colors.red,
                                    // ignore: prefer_const_constructors
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        "3",
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 40,
                                  ),
                                  RatingBar(
                                    initialRating: 3,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemCount: 5,
                                    itemSize: 25,
                                    ignoreGestures: true,
                                    ratingWidget: RatingWidget(
                                      full:
                                          Image.asset('assets/images/full.png'),
                                      half:
                                          Image.asset('assets/images/Half.png'),
                                      empty:
                                          Image.asset('assets/images/Null.png'),
                                    ),
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    onRatingUpdate: (rating) {
                                      // ignore: avoid_print
                                      print(rating);
                                    },
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.thumb_up,
                                      color: Colors.indigo,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    " 10 Reviews",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: FittedBox(
                child: Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      String number =
                                          "8962256650"; //set the number here
                                      // ignore: unused_local_variable
                                      bool? res = await FlutterPhoneDirectCaller
                                          .callNumber(number);
                                    },
                                    child: const Icon(
                                      Icons.phone,
                                      size: 40,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  Text(
                                    "Call",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      navigateTo(22.7196, 75.8577);
                                    },
                                    child: const Icon(
                                      Icons.location_pin,
                                      size: 40,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text(
                                    "Direction",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) =>
                                              AlertDialog(
                                            title: Text("Rate this Business"),
                                            content: RatingBar(
                                              initialRating: 0,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              ratingWidget: RatingWidget(
                                                full: Image.asset(
                                                    'assets/images/full.png'),
                                                half: Image.asset(
                                                    'assets/images/Half.png'),
                                                empty: Image.asset(
                                                    'assets/images/Null.png'),
                                              ),
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                              onRatingUpdate: (rating) {
                                                // ignore: avoid_print
                                                print(rating);
                                              },
                                            ),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    context, 'Cancel'),
                                                child: const Text('Cancel'),
                                              ),
                                              TextButton(
                                                onPressed: () => Navigator.pop(
                                                    context, 'OK'),
                                                child: const Text('OK'),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                      child: const Icon(
                                        Icons.star,
                                        size: 40,
                                        color: Color.fromARGB(255, 255, 196, 0),
                                      )),
                                  Text(
                                    "Give\nRating",
                                    style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                    textAlign: TextAlign.center,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          color: Colors.grey,
                          thickness: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width / 5,
                            child: Card(
                              elevation: 0,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      navigateTo(22.7196, 75.8577);
                                    },
                                    child: const Icon(
                                      Icons.share,
                                      size: 40,
                                      color: Colors.lightGreen,
                                    ),
                                  ),
                                  Text(
                                    "Share",
                                    style: TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ExpandablePanel(
                header: SizedBox(
                  height: MediaQuery.of(context).size.width / 7,
                  child: Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Icon(
                          Icons.book,
                          size: 30,
                          color: Color.fromARGB(255, 0, 162, 84),
                        ),
                        Text(
                          "Contact Details",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
                expanded: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 8,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.email_outlined,
                              size: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 50,
                            ),
                            Text(
                              "business1@gmail.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 8,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.call,
                              size: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 50,
                            ),
                            Text(
                              "89622XXXXX",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 8,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.location_city,
                              size: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 50,
                            ),
                            Text(
                              "Address",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 8,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Icon(
                              Icons.web,
                              size: 20,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 50,
                            ),
                            Text(
                              "www.business1.com",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 16),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                collapsed: SizedBox(
                  height: MediaQuery.of(context).size.width / 10,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
