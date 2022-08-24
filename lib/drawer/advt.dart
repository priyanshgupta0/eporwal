import 'package:e_porwal/business_list/new_business.dart';
import 'package:e_porwal/drawer/Add_new_adv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

class Advertisment extends StatefulWidget {
  const Advertisment({Key? key}) : super(key: key);

  @override
  State<Advertisment> createState() => _AdvertismentState();
}

class _AdvertismentState extends State<Advertisment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Advertisement"),
        centerTitle: true,
        leading: const BackButton(
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          for (var i = 0; i < 4; i++) ...[
            SizedBox(
              height: MediaQuery.of(context).size.width / 1.426,
              child: Card(
                elevation: 40,
                child: Column(children: [
                  Image(
                      image: NetworkImage(
                          "https://www.marketing91.com/wp-content/uploads/2020/06/COKE-Advertising-Example-Share-a-Coke-Campaign.jpg")),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text(
                          "CocaCola",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24),
                        ),
                        IconButton(
                            onPressed: () async {
                              String number =
                                  "8962256650"; //set the number here
                              // ignore: unused_local_variable
                              bool? res =
                                  await FlutterPhoneDirectCaller.callNumber(
                                      number);
                            },
                            icon: Icon(
                              Icons.call,
                              color: Colors.blue,
                              size: 30,
                            )),
                        IconButton(
                            onPressed: () {
                              launch("https://flutter.dev");
                            },
                            icon: Icon(
                              Icons.language,
                              color: Colors.black,
                              size: 30,
                            )),
                        Spacer(),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.visibility,
                              color: Colors.grey,
                              size: 30,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "5",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ),
            ),
          ],
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Add_adv()));
            },
            child: Icon(Icons.add),
          ),
        ),
      ),
    );
  }
}
