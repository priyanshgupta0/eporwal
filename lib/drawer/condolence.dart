import 'package:e_porwal/drawer/advt.dart';
import 'package:e_porwal/drawer/history.dart';
import 'package:e_porwal/drawer/sanstha.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../screens/home_screen.dart';
import '../screens/log_in.dart';
import '../screens/profile.dart';
import 'matrimonial.dart';

class Condolence extends StatefulWidget {
  const Condolence({Key? key}) : super(key: key);

  @override
  State<Condolence> createState() => _CondolenceState();
}

class _CondolenceState extends State<Condolence> {
  List<String> people_name = [
    "Full Name",
    "Full Name",
    "Full Name",
    "Full Name",
    "Full Name",
    "Full Name",
    "Full Name",
    "Full Name",
    "Full Name",
    "Full Name",
  ];
  List<String> people_dis = [
    "Discription",
    "Discription",
    "Discription",
    "Discription",
    "Discription",
    "Discription",
    "Discription",
    "Discription",
    "Discription",
    "Discription",
  ];
  List<String> date = [
    "05/05/2022",
    "04/05/2022",
    "04/05/2022",
    "05/05/2022",
    "03/05/2022",
    "01/05/2022",
    "01/05/2022",
    "02/05/2022",
    "03/05/2022",
    "03/05/2022",
  ];
  String today = "05/05/2022";
  String yesterday = "04/05/2022";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          "Condolence",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          if (countOccurrencesUsingWhereMethod(date, today) == 0)
            ...[]
          else ...[
            SizedBox(
              height: MediaQuery.of(context).size.width / 10,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Text(
                "Today",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
            ),
          ],
          for (int i = 0; i < people_name.length; i++)
            if (today == date[i]) ...[
              Card(
                elevation: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width / 5,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/user.png"),
                          radius: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              people_name[i],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                people_dis[i],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              date[i],
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          if (countOccurrencesUsingWhereMethod(date, yesterday) == 0)
            ...[]
          else ...[
            SizedBox(
              height: MediaQuery.of(context).size.width / 10,
              width: MediaQuery.of(context).size.width,
              child: Center(
                  child: Text(
                "Yesterday",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )),
            ),
          ],
          for (int i = 0; i < people_name.length; i++)
            if (yesterday == date[i]) ...[
              Card(
                elevation: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width / 5,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/user.png"),
                          radius: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              people_name[i],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                people_dis[i],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              date[i],
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          SizedBox(
            height: MediaQuery.of(context).size.width / 10,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Text(
              "Older",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            )),
          ),
          for (int i = 0; i < people_name.length; i++)
            if (today != date[i] && yesterday != date[i]) ...[
              Card(
                elevation: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width / 5,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CircleAvatar(
                          backgroundImage: AssetImage("assets/images/user.png"),
                          radius: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              people_name[i],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                people_dis[i],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              date[i],
                              style: TextStyle(fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
        ],
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
                      MaterialPageRoute(builder: (context) => const History()));
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

int countOccurrencesUsingWhereMethod(List<String> list, String element) {
  if (list == null || list.isEmpty) {
    return 0;
  }

  var foundElements = list.where((e) => e == element);
  return foundElements.length;
}
