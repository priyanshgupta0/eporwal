import 'package:e_porwal/drawer/bhavan_details.dart';
import 'package:flutter/material.dart';

class Bhavan extends StatelessWidget {
  const Bhavan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Bhavan",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const BhavanDetails()));
              },
              child: const Card(
                // ignore: prefer_const_constructors
                child: ListTile(
                  // ignore: prefer_const_constructors
                  leading: Icon(Icons.home_work_rounded),

                  // ignore: prefer_const_constructors
                  // backgroundImage: AssetImage(
                  //     "assets/images/wear_mask.png"),

                  // ignore: prefer_const_constructors
                  title: Text("Shri Adinath"),
                  // ignore: prefer_const_constructors
                  subtitle: Text("City :- Indore"),
                ),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),

            // ignore: prefer_const_constructors
            Card(
              // ignore: prefer_const_constructors
              child: ListTile(
                // ignore: prefer_const_constructors
                leading: Icon(Icons.home_work_rounded),
                // backgroundImage: AssetImage(
                //     "assets/images/wear_mask.png"),
                title: const Text("Name"),
                subtitle: const Text("Post"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
