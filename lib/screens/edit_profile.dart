import 'package:e_porwal/screens/profile.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_constructors
        leading: BackButton(color: Colors.black),
        // ignore: prefer_const_constructors
        title: Text(
          "Edit Profile",
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          // ignore: avoid_unnecessary_containers
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Image.asset("assets/images/wear_mask.png"),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 32, 16, 16),
                  child: TextField(
                    enabled: true,
                    decoration: InputDecoration(
                      labelText: "User Name",
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
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    //enabled: false,
                    decoration: InputDecoration(
                      labelText: "Email",
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
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    //enabled: false,
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
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    // enabled: false,
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
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    //enabled: false,
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
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: "Change Password",
                        // ignore: prefer_const_constructors
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.normal,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )),
                  ),
                ),
                SizedBox(
                  width: 350,
                  height: 80,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                // ignore: prefer_const_constructors
                                builder: (context) => UserProfile()));
                      },
                      // ignore: prefer_const_constructors
                      child: Text("Save"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
