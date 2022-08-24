import 'package:e_porwal/screens/edit_profile.dart';
import 'package:e_porwal/screens/home_screen.dart';
import 'package:e_porwal/screens/settings_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'edit_profile_1.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Center(
          // ignore: prefer_const_constructors
          child: Text(
            "Profile",
            // ignore: prefer_const_constructors
            style: TextStyle(color: Colors.black),
          ),
        ),
        // ignore: prefer_const_constructors
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          PopupMenuButton(
              // ignore: prefer_const_constructors
              icon: Icon(
                Icons.more_vert,
                color: Colors.black,
              ),
              onSelected: (newValue) {
                setState(() {
                  if (newValue == 1) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            // ignore: prefer_const_constructors
                            builder: (context) => editUserProfile()));
                  } else if (newValue == 2) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            // ignore: prefer_const_constructors
                            builder: (context) => SettingScreen()));
                  }
                });
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      // ignore: prefer_const_constructors
                      child: Text("Edit Profile"),
                      value: 1,
                      onTap: () {},
                    ),
                    PopupMenuItem(
                      // ignore: prefer_const_constructors
                      child: Text("Settings"),
                      value: 2,
                      onTap: () {},
                    ),
                  ]),
        ],
      ),

      // ignore: avoid_unnecessary_containers
      body: SingleChildScrollView(
        // ignore: avoid_unnecessary_containers
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/Priyansh.jpg"),
                  radius: 100,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: TextEditingController()..text = 'Priyansh',
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: "First Name",
                          // ignore: prefer_const_constructors
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: TextEditingController()..text = 'Gupta',
                        enabled: false,
                        decoration: InputDecoration(
                          labelText: "Last Name",
                          // ignore: prefer_const_constructors
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: TextEditingController()
                    ..text = 'priyanshguptaaa@gmail.com',
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: "E-mail",
                    // ignore: prefer_const_constructors
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: TextEditingController()..text = '8962256650',
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: "Mobile Number",
                    // ignore: prefer_const_constructors
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: TextEditingController()..text = 'Indore',
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: "Address",
                    // ignore: prefer_const_constructors
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: TextEditingController()..text = 'Developer',
                  enabled: false,
                  decoration: InputDecoration(
                    labelText: "About",
                    // ignore: prefer_const_constructors
                    labelStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
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
