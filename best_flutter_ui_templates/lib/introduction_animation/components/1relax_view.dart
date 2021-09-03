// import 'dart:html';

import 'package:flutter/material.dart';

class RelaxView extends StatelessWidget {
  final AnimationController animationController;

  const RelaxView({Key? key, required this.animationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _firstHalfAnimation =
        Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _secondHalfAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(-1, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.2,
        0.4,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _relaxFirstHalfAnimation =
        Tween<Offset>(begin: Offset(2, 0), end: Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _relaxSecondHalfAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(-2, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.2,
        0.4,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    final _imageFirstHalfAnimation =
        Tween<Offset>(begin: Offset(4, 0), end: Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _imageSecondHalfAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(-4, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.2,
        0.4,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    // final List<int> entries = <int>[1, 2, 3, 4, 5, 6, 7, 8];
    bool _hasBeenPressed = false;

    return SlideTransition(
      position: _firstHalfAnimation,
      child: SlideTransition(
        position: _secondHalfAnimation,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _relaxFirstHalfAnimation,
                child: SlideTransition(
                  position: _relaxSecondHalfAnimation,
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 1000, maxHeight: 400),
                    padding: const EdgeInsets.all(100),
                    child: Text(
                      "請問家中成員數量？",
                      style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, letterSpacing: 4),
                    ),
                  ),
                ),
              ),
              SlideTransition(
                position: _imageFirstHalfAnimation,
                child: SlideTransition(
                  position: _imageSecondHalfAnimation,
                  // 
                  child: Container(
                    constraints: BoxConstraints(maxWidth: 1000, maxHeight: 350),
                    child: ListView(
                    padding: const EdgeInsets.all(10),
                    children: <Widget>[
                      // TextButton(
                      //   onPressed: () {
                      //       _hasBeenPressed =! _hasBeenPressed;
                      //   },
                      //   child:
                      Text(
                        '1',
                        style: 
                          TextStyle(fontSize: 100.0, color: Color(0xffD6D6D6), fontWeight: FontWeight.w600, letterSpacing: 60),
                        ),
                        // onPressed: () {
                        //     _hasBeenPressed =! _hasBeenPressed;
                        // },
                      // ),
                      Text(
                        "2",
                        style:
                          TextStyle(fontSize: 100.0, color: Color(0xffD6D6D6), fontWeight: FontWeight.w600, letterSpacing: 60),
                      ),
                      Text(
                        '3',
                        style:
                          TextStyle(fontSize: 100.0, color: Color(0xffD6D6D6), fontWeight: FontWeight.w600, letterSpacing: 60),
                      ),
                      Text(
                        '4',
                        style:
                          TextStyle(fontSize: 100.0, color: Color(0xffD6D6D6), fontWeight: FontWeight.w600, letterSpacing: 60),
                      ),
                      Text(
                        '5',
                        style:
                          TextStyle(fontSize: 100.0, color: Color(0xffD6D6D6), fontWeight: FontWeight.w600, letterSpacing: 60),
                      ),
                      Text(
                        '6',
                        style:
                          TextStyle(fontSize: 100.0, color: Color(0xffD6D6D6), fontWeight: FontWeight.w700, letterSpacing: 60),
                      ),
                      // Container(
                      //   height: 20,
                      //   // color: Colors.amber[500],
                      //   child: const Center(child: Text('Entry A')),
                      // ),
                      // Container(
                      //   height: 20,
                      //   // color: Colors.amber[400],
                      //   child: const Center(child: Text('Entry B')),
                      // ),
                      // Container(
                      //   height: 20,
                      //   // color: Colors.amber[300],
                      //   child: const Center(child: Text('Entry C')),
                      // ),
                    ],
                    scrollDirection: Axis.horizontal,
                    )
                    // child: Image.asset(
                    //   'assets/introduction_animation/care_image.png',
                    //   fit: BoxFit.contain,
                    // ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(left: 1000, right: 64, bottom: 5, top: 10),
                // child: Text(
                //   "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore",
                //   textAlign: TextAlign.center,
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
