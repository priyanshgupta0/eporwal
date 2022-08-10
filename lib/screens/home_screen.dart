import 'dart:async';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_porwal/drawer/history.dart';
import 'package:e_porwal/screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';
import '../drawer/advt.dart';
import '../drawer/bhavan.dart';
import '../drawer/business.dart';
import '../drawer/condolence.dart';
import '../drawer/gotra.dart';
import '../drawer/matrimonial.dart';
import '../drawer/porwal_family.dart';
import '../drawer/proff_list.dart';
import '../drawer/sanstha.dart';
// import 'home_screen.dart';
import 'log_in.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageCurrentIndex = 0;
  int _currentPage = 0;
  late Timer _timer;
  PageController _pageController = PageController(
    initialPage: 0,
  );

  List<String> drawerItems = [
    "Home",
    "User Profile",
    "Matrimonial",
    "History",
    "Sanstha",
    "Advertisment",
    "Logout"
  ];
  List<IconData> drawerIcon = [
    Icons.home,
    Icons.account_box,
    Icons.account_box_outlined,
    Icons.family_restroom,
    Icons.history_edu,
    Icons.group,
    Icons.image_outlined,
    Icons.logout
  ];

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
        title: const Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.cyan,
        leading: Builder(builder: (context) {
          return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ));
        }),
        elevation: 0,
      ),
      body: Container(
        color: Colors.white,
        child: ListView(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 200,
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
                          image: AssetImage("assets/images/istockphoto1.jpg"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      const FittedBox(
                        child: Image(
                          image: AssetImage("assets/images/In-jain.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      const FittedBox(
                        child: Image(
                          image: AssetImage(
                              "assets/images/ahinsa-parmo-dharm.webp"),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 200),
                  child: Center(
                    child: DotsIndicator(
                      dotsCount: 3,
                      position: pageCurrentIndex.toDouble(),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 50,
              child: Marquee(
                text: 'This is Home Screen',
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                scrollAxis: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                blankSpace: 100,
                velocity: 50,
                showFadingOnlyWhenScrolling: true,
                fadingEdgeStartFraction: 0.5,
                fadingEdgeEndFraction: 0.5,
              ),
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const PorwalFamily()));
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.width / 2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(Icons.people),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('100'),
                              ),
                              const Text(
                                "Member's",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Proffessional()));
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.width / 2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(Icons.engineering),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: const Text('100'),
                              ),
                              const Text(
                                "Professional",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
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
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Bhavan()));
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.width / 2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(Icons.home_filled),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: const Text('100'),
                              ),
                              const Text(
                                "Bhavan",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Business()));
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.width / 2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(Icons.business),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('100'),
                              ),
                              const Text(
                                "Business",
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
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
            ),
            FittedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Condolence()));
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.width / 2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(Icons.nature),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('100'),
                              ),
                              const Text(
                                "Condolence",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 40,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Gotra()));
                        },
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width / 2.5,
                          height: MediaQuery.of(context).size.width / 2.5,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Icon(Icons.air),
                              const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: const Text('100'),
                              ),
                              const Text(
                                "Gotra",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
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
            ),
          ],
        ),
      ),
      drawer: SafeArea(
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,

            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const UserAccountsDrawerHeader(
                accountName: const Text("Priyansh Gupta"),
                accountEmail: const Text("priyanshguptaaa@gmail.com"),
                currentAccountPicture: const CircleAvatar(
                  backgroundImage:
                      const AssetImage("assets/images/Priyansh.jpg"),
                ),
              ),
              ListTile(
                //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                //selected: true,
                //selectedTileColor: Colors.grey[300],

                leading: const Icon(Icons.home),

                title: const Text("Home"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
              ),
              const Divider(
                color: Colors.black,
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.account_box),
                title: const Text("User Profile"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserProfile()));
                },
              ),
              const Divider(
                color: Colors.black,
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.family_restroom),
                title: const Text("Matrimonial"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MatriMonial()));
                },
              ),
              const Divider(
                color: Colors.black,
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.history_edu),
                title: const Text("History"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => History()));
                },
              ),
              const Divider(
                color: Colors.black,
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.group),
                title: const Text("Sanstha"),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Sanstha()));
                },
              ),
              const Divider(
                color: Colors.black,
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.image_outlined),
                title: const Text("Advertisment"),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Advertisment()));
                },
              ),
              const Divider(
                color: Colors.black,
                height: 10,
              ),
              ListTile(
                leading: const Icon(Icons.logout),
                title: const Text("Log Out"),
                onTap: () {
                  Navigator.pop(context); // on tap item drawer close
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Center(child: Text("Log out")),
                          content: SingleChildScrollView(
                            child: Column(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("Are you sure want to Log out?"),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Cancel'),
                                    ),
                                    TextButton(
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Login()));
                                      },
                                      child: const Text('Confirm'),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
              ),
              const Divider(
                color: Colors.black,
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
