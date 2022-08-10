import 'dart:async';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_page.dart';

class profile_detailed_page extends StatefulWidget {
  const profile_detailed_page({Key? key}) : super(key: key);

  @override
  State<profile_detailed_page> createState() => _profile_detailed_pageState();
}

class _profile_detailed_pageState extends State<profile_detailed_page> {
  List<String> Basic_detaiils = [
    "Member ID",
    "Gender",
    "DOB",
    "Age",
    "Height",
    "Manglik",
    "Cast",
    "Gotra",
    "Mother Gotra",
    "Father Gotra",
    "Marrital Status",
  ];
  List<String> Basic_detaiils_value = [
    "12345",
    "Female",
    "10/08/1993",
    "28",
    "175",
    "No",
    "Cast",
    "Gotra",
    "Mother Gotra",
    "Father Gotra",
    "Never Married",
  ];
  List<IconData> Basic_detaiils_icon = [
    CupertinoIcons.info,
    Icons.female,
    Icons.cake,
    Icons.calendar_month,
    Icons.height,
    Icons.add_moderator_outlined,
    Icons.person_pin,
    Icons.mobile_friendly_rounded,
    Icons.person_pin,
    Icons.person_pin,
    CupertinoIcons.heart_circle_fill,
  ];
  List<Color> Basic_detaiils_icon_color = [
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.purple,
    Colors.cyan,
    Colors.orange,
    Colors.indigo,
    Colors.tealAccent,
    Colors.indigo,
    Colors.indigo,
    Colors.red,
  ];
  List<String> Education_detaiils = [
    "Education Level",
    "Education Field",
    "Occupation",
    "Occupation Details",
    "Income",
  ];
  List<String> Edu_detaiils_value = [
    "Diploma",
    "Computer Sci.",
    "Business",
    "Entrepreneur",
    "INR 8 -10 Lakhs"
  ];
  List<IconData> Edu_detaiils_icon = [
    Icons.school,
    Icons.category,
    Icons.work,
    Icons.workspaces,
    Icons.attach_money,
  ];
  List<Color> Edu_detaiils_icon_color = [
    Colors.red,
    Colors.blue,
    Colors.orange,
    Colors.indigo,
    Colors.green,
  ];

  List<String> Contact_detaiils = [
    "Village / City",
    "Fathers Name",
    "Mothers Name",
    "Father Occupation",
    "Mothers Occupation",
    "No. of Brother",
    "No. of Sister",
    "Fathers Contact",
  ];
  List<String> Contact_detaiils_value = [
    "Indore",
    "Shubham Jain",
    "Mother's Name",
    "BusinessMan",
    "Housewife",
    "1",
    "0",
    "89564XXXXX",
  ];
  List<IconData> Contact_detaiils_icon = [
    Icons.location_on,
    Icons.family_restroom,
    Icons.family_restroom,
    Icons.work,
    Icons.work,
    Icons.family_restroom,
    Icons.family_restroom,
    Icons.call,
  ];
  List<Color> Contact_detaiils_icon_color = [
    Colors.red,
    Colors.green,
    Colors.green,
    Colors.indigo,
    Colors.pink,
    Colors.green,
    Colors.green,
    Colors.blue,
  ];

  int _currentPage = 0;
  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  int pageCurrentIndex = 0;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 350),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              SizedBox(
                height: 485,
                // width: MediaQuery.of(context).size.width,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      pageCurrentIndex = index;
                    });
                  },

                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const FittedBox(
                      child: Image(
                        image: AssetImage("assets/images/sample1.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    const FittedBox(
                      child: Image(
                        image: AssetImage("assets/images/sample1.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 400, left: 20),
                child: SizedBox(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Full Name",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Age : 25",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        "Indore",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 450),
                child: Center(
                  child: DotsIndicator(
                    dotsCount: 2,
                    position: pageCurrentIndex.toDouble(),
                    decorator: DotsDecorator(
                      color: Colors.black87, // Inactive color
                      activeColor: Colors.white,
                    ),
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: MediaQuery.of(context).size.width / 8,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const chat_page()));
                      },
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(
                                Icons.message,
                                color: Colors.green,
                              ),
                            ),
                            Text(
                              "Chat",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 8,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 4,
                    child: InkWell(
                      onTap: () {},
                      child: Card(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: const Icon(
                                CupertinoIcons.heart_fill,
                                color: Colors.red,
                              ),
                            ),
                            Text(
                              "Like",
                              style: TextStyle(fontWeight: FontWeight.bold),
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.person_pin_rounded,
                color: Colors.lightBlue,
                size: 30,
              ),
              Text(
                "Personal Inforamtion",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Divider(
              thickness: 2,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.file_copy,
                      color: Colors.purple,
                      size: 30,
                    ),
                    Text(
                      "Bio",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "wodwji didhhwiuh ihuidhcwiah wdjijwijd hiwajidj wijijj jdiojow jowjdow",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      CupertinoIcons.heart_circle_fill,
                      color: Colors.redAccent,
                      size: 30,
                    ),
                    Text(
                      "About Life Partner",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "wodwji didhhwiuh ihuidhcwiah wdjijwijd hiwajidj wijijj jdiojow jowjdow",
                    style:
                        TextStyle(fontWeight: FontWeight.normal, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.rectangle_paperclip,
                      color: Colors.grey,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Basic Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                for (var i = 0; i < Basic_detaiils.length; i++) ...[
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Basic_detaiils_icon[i],
                              color: Basic_detaiils_icon_color[i]),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Basic_detaiils[i],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                Basic_detaiils_value[i],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      CupertinoIcons.book_circle_fill,
                      color: Colors.green,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Education Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                for (var i = 0; i < Education_detaiils.length; i++) ...[
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Edu_detaiils_icon[i],
                              color: Edu_detaiils_icon_color[i]),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Education_detaiils[i],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                Edu_detaiils_value[i],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ]
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.contact_page_outlined,
                      color: Colors.blue,
                      size: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Contact Details",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.red),
                      ),
                    ),
                  ],
                ),
                Divider(
                  thickness: 2,
                ),
                for (var i = 0; i < Contact_detaiils.length; i++) ...[
                  Row(
                    children: [
                      Column(
                        children: [
                          Icon(Contact_detaiils_icon[i],
                              color: Contact_detaiils_icon_color[i]),
                        ],
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              Contact_detaiils[i],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                Contact_detaiils_value[i],
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                    color: Colors.grey),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 8,
          )
        ],
      ),
    );
  }
}
