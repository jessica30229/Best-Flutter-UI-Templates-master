import 'package:best_flutter_ui_templates/app_theme.dart';
import 'package:best_flutter_ui_templates/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CreateRecordPage extends StatefulWidget {
  // final String title ;
  // TabTestPage(this.title,{Key key}) : super(key:key);
  @override
  _CreateRecordPage createState() => _CreateRecordPage();
}

class _CreateRecordPage extends State<CreateRecordPage> {
  late final _ratingController;
  late double _rating;
  double _initialRating = 2.0;

  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        title: Text("新增家務紀錄", style: TextStyle(color: Colors.black)),
        backgroundColor: AppTheme.Yellow,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 30, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFF4F3ED),
                  ),
                  child: IconButton(
                    icon: Icon(MyFlutterApp.clean),
                    onPressed: () {},
                    iconSize: 25,
                    splashRadius: 50,
                  ),
                ),
                SizedBox(
                  width: 300.0,
                  height: 45,
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        /*边角*/
                        borderRadius: BorderRadius.all(
                          Radius.circular(10), //边角为30
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent, //边线颜色为黄色
                          width: 2, //边线宽度为2
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                        color: Colors.white10, //边框颜色为绿色
                        width: 2, //宽度为5
                      )),
                      labelText: "家務名稱",
                      hintText: "請輸入家務名稱",
                      filled: true,
                      fillColor: Color(0xFFF4F3ED),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('日期', style: TextStyle(fontSize: 17, color: Colors.black)),
                Text("今天", style: TextStyle(fontSize: 17, color: Colors.black)),
              ],
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('你喜歡做這個家務嗎?',
                    style: TextStyle(fontSize: 17, color: Colors.black)),
              ],
            ),
          ),
          SizedBox(
            width:380,
            child:_ratingBar(),),

          Padding(
            padding:
            const EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('花費時間',
                    style: TextStyle(fontSize: 17, color: Colors.black)),
              ],
            ),
          ),


          // Text:('你喜歡這個家務嗎'),
        ],
      ),
    );
  }

  Widget _ratingBar() {
    return RatingBar.builder(
      initialRating: 2.0,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: false,
      unratedColor: Color(0xFFF4F3ED),
      itemCount: 5,
      itemSize: 50.0,
      itemPadding: EdgeInsets.all(4),
      itemBuilder: (context, _) => Icon(
        Icons.favorite,
        color: Color(0xFFFFD84C),
      ),
      wrapAlignment: WrapAlignment.start,
      onRatingUpdate: (rating) {
        setState(() {
          _rating = rating;
        });
      },

      updateOnDrag: true,
    );
  }
}
