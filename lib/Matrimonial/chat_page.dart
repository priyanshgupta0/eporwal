import 'package:flutter/material.dart';

class chat_page extends StatefulWidget {
  const chat_page({Key? key}) : super(key: key);

  @override
  State<chat_page> createState() => _chat_pageState();
}

class _chat_pageState extends State<chat_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/images/sample1.jpeg"),
                radius: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Full Name"),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        SingleChildScrollView(),
        Spacer(),
        Container(
          color: Colors.white,
          height: MediaQuery.of(context).size.width / 6,
          child: Row(children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: "Message",
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
            InkWell(
              onTap: () {},
              child: Icon(
                Icons.send,
                size: 30,
                color: Color.fromARGB(255, 103, 145, 55),
              ),
            ),
          ]),
        ),
      ]),
    );
  }
}
