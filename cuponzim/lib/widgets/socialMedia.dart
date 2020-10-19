import 'package:Cuponzim/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  final String title;
  final Function onPressed;

  Button({this.title, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
      child: RaisedButton(
          onPressed: onPressed,
          elevation: 3,
          color: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.headline2.fontFamily,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: lightColor,
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: 5)),
                Icon(Icons.arrow_forward, size: 30)
              ],
            ),
          )),
    );
  }
}
