// ignore_for_file: prefer_const_constructors

import 'package:e_porwal/drawer/description.dart';
import 'package:flutter/material.dart';

class Sanstha extends StatefulWidget {
  const Sanstha({Key? key}) : super(key: key);

  @override
  State<Sanstha> createState() => _SansthaState();
}

class _SansthaState extends State<Sanstha> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: BackButton(color: Colors.black),
        title: Text(
          "Sanstha",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: SizedBox(
          //     height: 120,
          //     child: InkWell(
          //       onTap: () {
          //         Navigator.push(context,
          //             MaterialPageRoute(builder: (context) => PorwalFamily()));
          //       },
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(40),
          //           side: BorderSide(
          //             color: Colors.green.withOpacity(0.9),
          //           ),
          //         ),
          //         elevation: 10,
          //         child: Padding(
          //           padding: const EdgeInsets.all(24.0),
          //           child: Column(
          //             mainAxisAlignment: MainAxisAlignment.center,
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             // ignore: prefer_const_literals_to_create_immutables
          //             children: [
          //               Text(
          //                 "Porwal Family",
          //                 style: TextStyle(
          //                   fontSize: 25,
          //                   fontWeight: FontWeight.bold,
          //                 ),
          //               ),
          //               Text("Indore[M.P]"),
          //               Text("Contact:-9999999999")
          //             ],
          //           ),
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Description()));
            },
            child: Card(
              shape: RoundedRectangleBorder(
                  //borderRadius: BorderRadius.circular(25),
                  side: BorderSide(
                color: Colors.green.withOpacity(0.9),
              )),
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Text(
                      "Sanstha Name",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                    Text(
                      "Contact",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
                leading: Icon(Icons.numbers),
                // trailing: IconButton(

                //   icon: Icon(Icons.arrow_forward),
                // ),
              ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                // borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          Card(
            shape: RoundedRectangleBorder(
                //borderRadius: BorderRadius.circular(25),
                side: BorderSide(
              color: Colors.green.withOpacity(0.9),
            )),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Sanstha Name",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Description",
                    style:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
                  ),
                  Text(
                    "Contact",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
              leading: Icon(Icons.numbers),
              // trailing: IconButton(
              //   onPressed: () {},
              //   icon: Icon(Icons.arrow_forward),
              // ),
            ),
          ),

          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: SizedBox(
          //     height: 200,
          //     child: InkWell(
          //       onTap: () {},
          //       child: Card(
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(40),
          //           side: BorderSide(
          //             color: Colors.green.withOpacity(0.9),
          //           ),
          //         ),
          //         elevation: 10,
          //         child: Column(
          //           mainAxisAlignment: MainAxisAlignment.center,
          //           // ignore: prefer_const_literals_to_create_immutables
          //           children: [
          //             Text(
          //               "Member's",
          //               style: TextStyle(
          //                 fontSize: 25,
          //                 fontWeight: FontWeight.bold,
          //               ),
          //             )
          //           ],
          //         ),
          //       ),
          //     ),
          //   ),
          // ),

          // Padding(
          //   padding: const EdgeInsets.all(16.0),
          //   child: SizedBox(
          //     height: 200,
          //     child: Card(
          //       shape: RoundedRectangleBorder(
          //         borderRadius: BorderRadius.circular(40),
          //         side: BorderSide(
          //           color: Colors.green.withOpacity(0.9),
          //         ),
          //       ),
          //       elevation: 10,
          //       child: Column(
          //         mainAxisAlignment: MainAxisAlignment.center,
          //         // ignore: prefer_const_literals_to_create_immutables
          //         children: [
          //           Text(
          //             "Community",
          //             style: TextStyle(
          //               fontSize: 25,
          //               fontWeight: FontWeight.bold,
          //             ),
          //           )
          //         ],
          //       ),
          //     ),
          //   ),
          // ),

          // Card(
          //   child:ListTile(
          //      title: Text("Ballot"),
          //      subtitle: Text("Cast your vote."),
          //       leading:  CircleAvatar(
          //         backgroundImage: NetworkImage(
          //           "https://miro.medium.com/fit/c/64/64/1*WSdkXxKtD8m54-1xp75cqQ.jpeg")), trailing: Icon(Icons.star)))
        ],
      ),
    );
  }
}
