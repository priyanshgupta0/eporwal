import 'package:flutter/material.dart';

class Gotra extends StatefulWidget {
  const Gotra({Key? key}) : super(key: key);

  @override
  State<Gotra> createState() => _GotraState();
}

class _GotraState extends State<Gotra> {
  List<String> Gotra_name = [
    "Gotra 1",
    "Gotra 2",
    "Gotra 3",
    "Gotra 4",
    "Gotra 5",
    "Gotra 6",
    "Gotra 7",
    "Gotra 8",
    "Gotra 9",
    "Gotra 10",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(color: Colors.black),
        title: const Text(
          "Gotra",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: Scrollbar(
        child: ListView.builder(
            itemCount: Gotra_name.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: SizedBox(
                  height: MediaQuery.of(context).size.width / 6,
                  child: FittedBox(
                    child: Row(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2.7,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Center(
                            child: Text(
                              Gotra_name[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 4,
                        ),
                        InkWell(
                          onTap: () {},
                          child: const Icon(
                            Icons.forward,
                            size: 35,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
