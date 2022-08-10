import 'dart:ffi';

import 'package:e_porwal/business_list/business1.dart';
import 'package:e_porwal/business_list/business2.dart';
import 'package:e_porwal/business_list/new_business.dart';
import 'package:e_porwal/drawer/bhavan_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:velocity_x/velocity_x.dart';

class Business extends StatefulWidget {
  const Business({Key? key}) : super(key: key);

  @override
  State<Business> createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  // ignore: non_constant_identifier_names
  List<String> Business_name = [
    "Business 1",
    "Business 2",
    "Business 3",
    "Business 4",
    "Business 5",
    "Business 6",
    "Business 7",
    "Business 8",
    "Business 9",
    "Business 10",
  ];
  // ignore: non_constant_identifier_names
  List<String> Business_image = [
    "assets/images/Business1.png",
    "assets/images/Business2.jpg",
    "assets/images/Business3.png",
    "assets/images/Business4.png",
    "assets/images/Business1.png",
    "assets/images/Business3.png",
    "assets/images/Business4.png",
    "assets/images/Business1.png",
    "assets/images/Business3.png",
    "assets/images/Business4.png",
  ];
  List<String> Business_address = [
    "Business Address 1\n Business Address 1",
    "Business Address 2",
    "Business Address 3",
    "Business Address 4",
    "Business Address 5",
    "Business Address 6",
    "Business Address 7",
    "Business Address 8",
    "Business Address 9",
    "Business Address 10",
  ];
  List<String> Business_number = [
    "8962256650",
    "8962256650",
    "8962256650",
    "8962256650",
    "8962256650",
    "8962256650",
    "8962256650",
    "8962256650",
    "8962256650",
    "8962256650",
  ];
  List<double> Business_north = [
    22.7196,
    22.7196,
    22.7196,
    22.7196,
    22.7196,
    22.7196,
    22.7196,
    22.7196,
    22.7196,
    22.7196,
  ];
  List<double> Business_east = [
    75.8577,
    75.8577,
    75.8577,
    75.8577,
    75.8577,
    75.8577,
    75.8577,
    75.8577,
    75.8577,
    75.8577,
  ];
  List<int> Business_rating = [
    4,
    5,
    4,
    5,
    4,
    5,
    3,
    2,
    1,
    2,
  ];
  List<Widget> Business_ontap = [
    Business1(),
    business2(),
    Business1(),
    Business1(),
    Business1(),
    Business1(),
    Business1(),
    Business1(),
    Business1(),
    Business1(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        leading: BackButton(
          color: Colors.black,
        ),
        // ignore: prefer_const_constructors
        title: Text(
          "Business",
          textAlign: TextAlign.center,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: Business_name.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Business_ontap[index]));
            },
            child: Card(
                elevation: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width / 4,
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image(
                              image: AssetImage(Business_image[index]),
                              fit: BoxFit.fill,
                              height: MediaQuery.of(context).size.width / 5,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Business_name[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Text(
                                Business_name[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16),
                              ),
                              Text(Business_address[index]),
                            ],
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width / 20,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (int i = 0;
                                      i < Business_rating[index];
                                      i++)
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                    ),
                                  for (int i = 0;
                                      i < 5 - Business_rating[index];
                                      i++)
                                    const Icon(
                                      Icons.star,
                                      color: Colors.black,
                                    ),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.width / 50,
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () async {
                                      String number = Business_number[
                                          index]; //set the number here
                                      // ignore: unused_local_variable
                                      bool? res = await FlutterPhoneDirectCaller
                                          .callNumber(number);
                                    },
                                    child: const Icon(
                                      Icons.phone,
                                      color: Colors.blue,
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 20,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      navigateTo(Business_north[index],
                                          Business_east[index]);
                                    },
                                    child: const Icon(
                                      Icons.location_pin,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                )),
          );
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 70, right: 20),
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Add_New_Business()));
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
