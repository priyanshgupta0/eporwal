import 'dart:async';

import 'package:e_porwal/drawer/bhavan_details.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class ZoomScreen extends StatefulWidget {
  // final int position;

  // const ZoomScreen({required this.position}) : super();
  final int position;
  const ZoomScreen({
    Key? key,
    required this.position,
  }) : super();

  @override
  State<ZoomScreen> createState() => _ZoomScreenState();
}

class _ZoomScreenState extends State<ZoomScreen> {
  // int _currentPage = 0;
  // late Timer _timer;
  // PageController _pageController = PageController(
  //   initialPage: 0,
  // );

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
  //     if (_currentPage < 2) {
  //       _currentPage++;
  //     } else {
  //       _currentPage = 0;
  //     }
  //     _pageController.animateToPage(_currentPage,
  //         duration: Duration(milliseconds: 350), curve: Curves.easeIn);
  //   });
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   _timer.cancel();
  // }
  // late PageController pageController;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   pageController = PageController(initialPage: widget.position);
  // }
  late PageController pageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pageController = PageController(initialPage: widget.position);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: PageView(
        // controller: pageController,
        controller: pageController,
        children: [
          PhotoView(
            imageProvider: AssetImage("assets/images/538356762.jpg"),
          ),
          PhotoView(
            imageProvider: AssetImage("assets/images/newtemple.jpg"),
          ),
          PhotoView(
            imageProvider: AssetImage("assets/images/58-1.jpg"),
          ),
          PhotoView(
            imageProvider: AssetImage("assets/images/imagefour.jpg"),
          ),
          PhotoView(
            imageProvider: AssetImage("assets/images/jain-bhavan-1.jpg"),
          ),
        ],
      ),
      //child: PhotoView(imageProvider: AssetImage("assets/images/538356762.jpg")),
    );
  }
}
