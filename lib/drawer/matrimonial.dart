import 'package:e_porwal/Matrimonial/chat_page.dart';
import 'package:e_porwal/Matrimonial/profile_detailed_page.dart';
import 'package:e_porwal/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MatriMonial extends StatefulWidget {
  const MatriMonial({Key? key}) : super(key: key);

  @override
  State<MatriMonial> createState() => _MatriMonialState();
}

class _MatriMonialState extends State<MatriMonial> {
  List<String> profile_image = [
    "assets/images/sample1.jpeg",
    "assets/images/sample1.jpeg",
    "assets/images/sample1.jpeg",
    "assets/images/sample1.jpeg",
    "assets/images/sample1.jpeg",
    "assets/images/sample1.jpeg",
    "assets/images/sample1.jpeg",
    "assets/images/sample1.jpeg",
    "assets/images/sample1.jpeg",
    "assets/images/sample1.jpeg",
  ];
  List<String> profile_name = [
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
  List<String> profile_About = [
    "About\nAbout",
    "About\nAbout",
    "About\nAbout",
    "About\nAbout",
    "About\nAbout",
    "About\nAbout",
    "About\nAbout",
    "About\nAbout",
    "About\nAbout",
    "About\nAbout",
  ];
  List<String> profile_Age = [
    "Age : 27",
    "Age : 27",
    "Age : 27",
    "Age : 27",
    "Age : 27",
    "Age : 27",
    "Age : 27",
    "Age : 27",
    "Age : 27",
    "Age : 27",
  ];
  List<String> profile_location = [
    "Indore",
    "Indore",
    "Indore",
    "Indore",
    "Indore",
    "Indore",
    "Indore",
    "Indore",
    "Indore",
    "Indore",
  ];
  List<String> profile_Last_message = [
    "Last Message",
    "Last Message",
    "Last Message",
    "Last Message",
    "Last Message",
    "Last Message",
    "Last Message",
    "Last Message",
    "Last Message",
    "Last Message",
  ];
  List<String> profile_Last_seen = [
    "Last seen",
    "Last seen",
    "Last seen",
    "Last seen",
    "Last seen",
    "Last seen",
    "Last seen",
    "Last seen",
    "Last seen",
    "Last seen",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.cyan,
            leading: const BackButton(color: Colors.black),
            bottom: const TabBar(
              tabs: [
                Tab(
                    text: "Nere By",
                    icon: Icon(
                      Icons.location_on_rounded,
                      color: Colors.lightGreen,
                    )),
                Tab(
                    text: "Match",
                    icon: Icon(
                      CupertinoIcons.heart_fill,
                      color: Colors.red,
                    )),
                Tab(text: "Message", icon: Icon(Icons.chat)),
              ],
            ),
            title: const Text('Matrimonial'),
            centerTitle: true,
          ),
          body: TabBarView(
            children: [
              ListView(
                children: [
                  for (var i = 0; i < profile_name.length; i++) ...[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width / 2.5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const profile_detailed_page()));
                          },
                          child: Card(
                            elevation: 40,
                            color: Colors.white,
                            child: FittedBox(
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      image: AssetImage(profile_image[0]),
                                      // fit: BoxFit.cover,
                                      height:
                                          MediaQuery.of(context).size.width / 3,
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            profile_name[0],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                        Text(
                                          profile_About[0],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          profile_Age[0],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.location_on,
                                                color: Colors.red,
                                              ),
                                              Text(
                                                profile_location[0],
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const chat_page()));
                                            },
                                            child: const Icon(
                                              Icons.message,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            onTap: () {},
                                            child: const Icon(
                                              CupertinoIcons.heart,
                                              color: Colors.red,
                                            ),
                                          ),
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
                    ),
                  ]
                ],
              ),
              ListView(
                children: [
                  for (var i = 0; i < profile_name.length; i++) ...[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.width / 2.5,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const profile_detailed_page()));
                          },
                          child: Card(
                            elevation: 40,
                            color: Colors.white,
                            child: FittedBox(
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20.0),
                                    child: Image(
                                      image: AssetImage(profile_image[0]),
                                      // fit: BoxFit.cover,
                                      height:
                                          MediaQuery.of(context).size.width / 3,
                                      width:
                                          MediaQuery.of(context).size.width / 3,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(top: 5),
                                          child: Text(
                                            profile_name[0],
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ),
                                        Text(
                                          profile_About[0],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16),
                                        ),
                                        Text(
                                          profile_Age[0],
                                          style: const TextStyle(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 16),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            children: [
                                              const Icon(
                                                Icons.location_on,
                                                color: Colors.red,
                                              ),
                                              Text(
                                                profile_location[0],
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    fontSize: 16),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width / 5,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            onTap: () {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          const chat_page()));
                                            },
                                            child: const Icon(
                                              Icons.message,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: InkWell(
                                            onTap: () {},
                                            child: const Icon(
                                              CupertinoIcons.heart_fill,
                                              color: Colors.red,
                                            ),
                                          ),
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
                    ),
                  ]
                ],
              ),
              ListView(
                children: [
                  for (var i = 0; i < profile_name.length; i++) ...[
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 4,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const chat_page()));
                        },
                        child: Card(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: CircleAvatar(
                                  backgroundImage: AssetImage(profile_image[i]),
                                  radius: 40,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      profile_name[i],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Spacer(),
                                    Text(
                                      profile_Last_message[i],
                                      style: TextStyle(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 20),
                                    ),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Text(
                                  profile_Last_seen[i],
                                  style: TextStyle(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ]
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
