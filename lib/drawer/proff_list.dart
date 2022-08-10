// ignore_for_file: prefer_const_constructors

import 'package:e_porwal/drawer/proffessional.dart';
import 'package:e_porwal/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class Proffessional extends StatefulWidget {
  const Proffessional({
    Key? key,
    this.controller,
  }) : super(key: key);

  final ScrollController? controller;

  @override
  State<Proffessional> createState() => _ProffessionalState();
}

class _ProffessionalState extends State<Proffessional> {
  List<City> mList = [];

  @override
  void initState() {
    super.initState();

    List<User> userList = [];
    userList.add(User(name: "Abc"));
    userList.add(User(name: "DBQS"));
    userList.add(User(name: "User 1"));
    userList.add(User(name: "User 2"));
    userList.add(User(name: "User 3"));
    userList.add(User(name: "User 4"));
    userList.add(User(name: "User 5"));

    List<Occupation> occupationList = [];
    occupationList.add(Occupation(occupationName: "Doctor", users: userList));
    occupationList.add(Occupation(occupationName: "Engineer", users: userList));
    occupationList.add(Occupation(occupationName: "C.A.", users: userList));
    occupationList
        .add(Occupation(occupationName: "Bussiness", users: userList));
    occupationList
        .add(Occupation(occupationName: "Govt. Employee", users: userList));
    occupationList.add(Occupation(occupationName: "Artist", users: userList));
    occupationList.add(Occupation(occupationName: "Other", users: userList));

    mList.add(City(occupation: occupationList, city: "Indore"));
    mList.add(City(occupation: occupationList, city: "Rau"));
    mList.add(City(occupation: occupationList, city: "Dewas"));
    mList.add(City(occupation: occupationList, city: "Mau"));
    mList.add(City(occupation: occupationList, city: "Bhopal"));
    mList.add(City(occupation: occupationList, city: "Mandsaur"));
    mList.add(City(occupation: occupationList, city: "Jabalpur"));
    mList.add(City(occupation: occupationList, city: "Delhi"));
    mList.add(City(occupation: occupationList, city: "Mumbai"));

    mList.sort((a, b) => a.city.compareTo(b.city));

    //List<String> city = [];
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldWrapper(
      wrap: widget.controller == null,
      title: 'City Names',
      child: ListView.builder(
        itemCount: mList.length,
        itemBuilder: (context, index) {
          return Material(
            color: Colors.white,
            child: StickyHeader(
              controller: widget.controller, // Optional
              header: Container(
                height: 50.0,
                color: Color.fromARGB(255, 211, 218, 219),
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                alignment: Alignment.centerLeft,
                child: Center(
                  child: Text(
                    mList[index].city,
                    style: const TextStyle(color: Colors.black, fontSize: 25),
                  ),
                ),
              ),
              content: Column(
                children: [
                  for (Occupation item in mList[index].occupation)
                    Column(
                      children: [
                        Text(
                          item.occupationName,
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.normal),
                        ),

                        Column(
                          children: [
                            for (User user in item.users)
                              Card(
                                elevation: 10,
                                child: ListTile(
                                  leading: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "assets/images/wear_mask.png"),
                                  ),
                                  title: InkWell(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    HomeScreen()));
                                      },
                                      child: Text(user.name)),
                                  subtitle: Text("Post"),
                                ),
                              ),
                          ],
                        )

                        //Text(item),
                      ],
                    )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  //Widget imageForIndex(int index) {
  //return Image(image: AssetImage("assets/images/wear_mask.png"));
  //}
}

class ScaffoldWrapper extends StatelessWidget {
  const ScaffoldWrapper({
    Key? key,
    required this.title,
    required this.child,
    this.wrap = true,
  }) : super(key: key);

  final Widget child;
  final String title;
  final bool wrap;

  @override
  Widget build(BuildContext context) {
    if (wrap) {
      return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Hero(
            tag: 'app_bar',
            child: AppBar(
              title: Text(title),
              centerTitle: true,
              elevation: 0.0,
            ),
          ),
        ),
        body: child,
      );
    } else {
      return Material(
        child: child,
      );
    }
  }
}
