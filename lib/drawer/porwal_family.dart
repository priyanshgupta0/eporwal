// ignore_for_file: prefer_const_constructors

import 'package:e_porwal/screens/home_screen.dart';
import 'package:flutter/material.dart';

import '../screens/user_detailed_page.dart';
// ignore: import_of_legacy_library_into_null_safe

class PorwalFamily extends StatefulWidget {
  const PorwalFamily({Key? key}) : super(key: key);

  @override
  State<PorwalFamily> createState() => _PorwalFamilyState();
}

class _PorwalFamilyState extends State<PorwalFamily> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(color: Colors.black),
        title: Text(
          "Porwal Family",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => UserDetailPage()));
            },
            child: Card(
              child: ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/wear_mask.png"),
                ),
                title: Text("Name"),
                subtitle: Text("Post"),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/wear_mask.png"),
              ),
              title: Text("Name"),
              subtitle: Text("Post"),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/wear_mask.png"),
              ),
              title: Text("Name"),
              subtitle: Text("Post"),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/wear_mask.png"),
              ),
              title: Text("Name"),
              subtitle: Text("Post"),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/wear_mask.png"),
              ),
              title: Text("Name"),
              subtitle: Text("Post"),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/wear_mask.png"),
              ),
              title: Text("Name"),
              subtitle: Text("Post"),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/wear_mask.png"),
              ),
              title: Text("Name"),
              subtitle: Text("Post"),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage("assets/images/wear_mask.png"),
              ),
              title: Text("Name"),
              subtitle: Text("Post"),
            ),
          ),
        ],
      ),
    );
  }
}
