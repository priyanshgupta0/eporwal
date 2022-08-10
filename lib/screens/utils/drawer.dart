import 'package:flutter/material.dart';

class DrawerSide extends StatefulWidget {
  const DrawerSide({Key? key}) : super(key: key);

  @override
  State<DrawerSide> createState() => _DrawerSideState();
}

class _DrawerSideState extends State<DrawerSide> {
  List<String> drawerItems = [
    "Home",
    "User Profile",
    "Updates",
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
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const UserAccountsDrawerHeader(
          accountName: Text("Lokendra"),
          accountEmail: Text("lokendra.xyz@gmail.com"),
          currentAccountPicture: CircleAvatar(
            backgroundColor: Colors.white,
            child: Text("L"),
          ),
        ),
        ListView.builder(
          itemCount: drawerItems.length,
          // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
          itemBuilder: (BuildContext, index) {
            return Column(
              children: [
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  // ignore: prefer_const_constructors
                  child: Divider(
                    color: Colors.black,
                    height: 2,
                  ),
                ),
                ListTile(
                  leading: Icon(
                    drawerIcon[index],
                  ),
                  title: Text(
                    drawerItems[index],
                  ),
                  onTap: (){},
                )
              ],
            );
          },
        ),
      ],
    );
  }
}
