import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

// ignore: must_be_immutable
class MySimpleStickyHeaderScreen extends StatelessWidget {
  HashMap<String, List<String>> mapSoccerPlayers =
      HashMap<String, List<String>>();
  ScrollController myScrollContainer = ScrollController();

// ignore: use_key_in_widget_constructors
  MySimpleStickyHeaderScreen(this.mapSoccerPlayers);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Simple Sticky Header")),
      body: ListView.builder(
        // ignore: unnecessary_null_comparison
        primary: myScrollContainer == null,
        controller: myScrollContainer,
        itemCount: mapSoccerPlayers.keys.length,
        itemBuilder: (context, index) {
          String getKey = mapSoccerPlayers.keys.toList()[index];
          List<String>? getValuesFromKey = mapSoccerPlayers[getKey];
          List<Widget> listPlayerNamesWidgets = [];
          for (var playerName in getValuesFromKey!) {
            listPlayerNamesWidgets.add(Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text(
                  playerName,
                  style: const TextStyle(fontSize: 25),
                )));
          }
          return Material(
            child: StickyHeader(
                controller: myScrollContainer,
                header: Container(
                  height: 60,
                  color: Colors.orangeAccent,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    getKey,
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                content: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: listPlayerNamesWidgets,
                )),
          );
        },
      ),
    );
  }
}
