// ignore_for_file: prefer_const_constructors
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../drawer/bhavan_details.dart';

class Business1 extends StatefulWidget {
  const Business1({Key? key}) : super(key: key);

  @override
  State<Business1> createState() => _Business1State();
}

class _Business1State extends State<Business1> {
  @override
  double Business1_rating = 3.5;
  int reviews = 10;
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        floatHeaderSlivers: true,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            // ignore: prefer_const_constructors
            SliverAppBar(
              elevation: 0,
              backgroundColor: Colors.white,
              leading: const BackButton(
                color: Colors.black,
              ),
              expandedHeight: 200.0,
              floating: true,
              // ignore: prefer_const_constructors
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  // ignore: prefer_const_constructors
                  background: FittedBox(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width / 40,
                        ),
                        const Image(
                          image: AssetImage(
                            "assets/images/Business1.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ],
                    ),
                  )),
            ),
          ];
        },
        body: ListView(
          children: [
            Center(
              child: Container(
                color: Colors.white,
                child: const Text(
                  "Business_Name",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text("About\nmore info",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18)),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 10,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.width / 12,
                    color: Colors.red,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        Business1_rating.toString(),
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 40,
                  ),
                  RatingBar(
                    initialRating: Business1_rating,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 25,
                    ignoreGestures: true,
                    ratingWidget: RatingWidget(
                      full: Image.asset('assets/images/full.png'),
                      half: Image.asset('assets/images/Half.png'),
                      empty: Image.asset('assets/images/Null.png'),
                    ),
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    onRatingUpdate: (rating) {
                      // ignore: avoid_print
                      print(Business1_rating);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Column(
                          children: [
                            InkWell(
                              onTap: () async {
                                String number =
                                    "8962256650"; //set the number here
                                // ignore: unused_local_variable
                                bool? res =
                                    await FlutterPhoneDirectCaller.callNumber(
                                        number);
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
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Column(
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
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Column(
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
                                          onPressed: () =>
                                              Navigator.pop(context, 'Cancel'),
                                          child: const Text('Cancel'),
                                        ),
                                        TextButton(
                                          onPressed: () =>
                                              Navigator.pop(context, 'OK'),
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
                              "Give Rating",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            )
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                        Column(
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
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 3,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 40,
                  ),
                  MaterialButton(
                    onPressed: () {},
                    child: SizedBox(
                      height: MediaQuery.of(context).size.width / 8,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Card(
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        color: Colors.red,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Inquire Now",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            InkWell(
                              onTap: () {},
                              child: Icon(
                                Icons.thumb_up,
                                color: Colors.indigo,
                                size: 40,
                              ),
                            ),
                            Text(
                              reviews.toString() + " Reviews",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                        ),
                        VerticalDivider(
                          thickness: 2,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "0123",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 16),
                            ),
                            Text(
                              "Established",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 10,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: Colors.black,
                  ),
                  ExpandablePanel(
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
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
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16),
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
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 30,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
