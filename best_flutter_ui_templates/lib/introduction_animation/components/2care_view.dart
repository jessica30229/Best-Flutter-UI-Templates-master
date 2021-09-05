import 'package:flutter/material.dart';

class CareView extends StatelessWidget {
  final AnimationController animationController;

  const CareView({Key? key, required this.animationController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _firstHalfAnimation =
        Tween<Offset>(begin: Offset(1, 0), end: Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.4,
        0.6,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _secondHalfAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(-1, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _relaxFirstHalfAnimation =
        Tween<Offset>(begin: Offset(2, 0), end: Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.4,
        0.6,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _relaxSecondHalfAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(-2, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    final _imageFirstHalfAnimation =
        Tween<Offset>(begin: Offset(4, 0), end: Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.4,
        0.6,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _imageSecondHalfAnimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(-4, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    // String dropdownValue = 'One';
    final List<bool> isSelected;

    return SlideTransition(
      position: _firstHalfAnimation,
      child: SlideTransition(
        position: _secondHalfAnimation,
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SlideTransition(
                position: _relaxFirstHalfAnimation,
                child: SlideTransition(
                  position: _relaxSecondHalfAnimation,
                  child: 
                    Container(
                      // constraints: BoxConstraints(maxWidth: 350, maxHeight: 10),
                      margin: EdgeInsets.only(left: 100, right: 100, bottom: 10, top: 100),
                      child: Text(
                        "設定家庭成員基本資料",
                        style:
                          TextStyle(fontSize: 18.0, fontWeight: FontWeight.w700, letterSpacing: 4),
                          textAlign: TextAlign.center,
                      ),
                    ),
                ),
              ),
              SlideTransition(
                position: _imageFirstHalfAnimation,
                child: SlideTransition(
                  position: _imageSecondHalfAnimation,
                  // child: Container(
                  //   constraints: BoxConstraints(maxWidth: 350, maxHeight: 250),
                  //   child: Image.asset(
                  //     'assets/introduction_animation/care_image.png',
                  //     fit: BoxFit.contain,
                  //   ),
                  // ),
                  child:
                    ListView(
                      shrinkWrap: true, 
                      children: <Widget>[
                        Stack(
                          // margin: EdgeInsets.only(left: 64, right: 64, bottom: 10, top: 10),
                          // padding: EdgeInsets.only(left: 40, top: 30),
                          // 
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(left: 64, right: 64, bottom: 10, top: 10),
                              constraints: BoxConstraints(maxWidth: 300, maxHeight: 150),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xffF4F3ED),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 100, top: 30),
                              child :
                              Image.asset(
                                'assets/introduction_animation/Avatar.png',  
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 180, top: 40),
                              child :
                              Text(
                                  "稱呼",
                                  style:
                                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 2.5),
                                    textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 230, top: 40),
                              child :
                              Container(
                               width: 110.0,
                               height: 30,
                               child: TextField(
                                  cursorColor: Colors.black,
                                  decoration: InputDecoration(
                                    // border: InputBorder.none,
                                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0), borderSide: BorderSide(color: Colors.white)),
                                      filled: true,
                                      fillColor: Colors.white,
                                      // hintText: 'Username',
                                      contentPadding: EdgeInsets.only(left: 14.0, bottom: 18.0),
                                  ),
                               ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 180, top: 80),
                              child:
                              Text(
                                  "年齡",
                                  style:
                                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 2.5),
                                    textAlign: TextAlign.center,
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.only(left: 230, top: 80),
                            //   child :
                            //   Container(
                            //   width: 110.0,
                            //    height: 30,
                            //    child: DropdownButton<String>(
                                 
                            //    value: dropdownValue,
                            //    icon: const Icon(Icons.arrow_downward),
                            //    iconSize: 24,
                            //    elevation: 16,
                            //    style: const TextStyle(color: Colors.deepPurple),
                            //    underline: Container(
                            //    height: 2,
                            //    color: Colors.deepPurpleAccent,
                            //    ),
                            //    onChanged: (String? newValue) {
                            //    setState(() {
                            //    dropdownValue = newValue!;
                            //    });
                            //    },
                            //    items: <String>['One', 'Two', 'Free', 'Four']
                            //    .map<DropdownMenuItem<String>>((String value) {
                            //    return DropdownMenuItem<String>(
                            //    value: value,
                            //    child: Text(value),
                            //    );
                            //    }).toList(),
                            //    ),
                            //   ),
                            // ),
                            Padding(
                              padding: EdgeInsets.only(left: 180, top: 120),
                              child :
                              Text(
                                  "性別",
                                  style:
                                    TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 2.5),
                                    textAlign: TextAlign.center,
                              ),
                            ),
                            // Padding(
                            //   padding: EdgeInsets.only(left: 180, top: 120),
                            //   child :
                            //   ToggleButtons(
                            //     children: <Widget>[
                            //     Text('性別女'),
                            //     Text('性別男'),
                            //     ],
                            //     onPressed: (int index) {
                            //       setState(() {
                            //      for (int buttonIndex = 0; buttonIndex < isSelected.length; buttonIndex++) {
                            //      if (buttonIndex == index) {
                            //      isSelected[buttonIndex] = true;
                            //      } else {
                            //      isSelected[buttonIndex] = false;
                            //      }
                            //      }
                            //      });
                            //     },
                            //     isSelected: isSelected,
                            //   ),
                            // ),
                          ], 
                        ),
                      ],
                      scrollDirection: Axis.vertical,
                    ),
                ),
              ),
              // Padding(
              //   padding:
              //       EdgeInsets.only(left: 64, right: 64, bottom: 16, top: 16),
              //   child: Text(
              //     "Lorem ipsum dolor sit amet,consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore",
              //     textAlign: TextAlign.center,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
