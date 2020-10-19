import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainTile extends StatelessWidget {
  final String title;
  final String date;
  final Function onTap;

  MainTile({this.title, this.onTap, this.date});
  var indexCarousel = 0;
  Size displaySize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
    return displaySize(context).height;
  }

  double displayWidth(BuildContext context) {
    return displaySize(context).width;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Colors.white,
        elevation: 1,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
               Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Text(title,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black)),
              Padding(
                padding: EdgeInsets.all(5.0),
              ),
              Text(date,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black)),
              Padding(
                padding: EdgeInsets.all(20.0),
              ),
              Text('+ Detalhes',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xffF4C95D))),
            ],
          ),
        ),
      ),
    );
  }
}
