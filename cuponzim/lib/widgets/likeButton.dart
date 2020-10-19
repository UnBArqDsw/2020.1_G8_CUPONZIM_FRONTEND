import 'package:Cuponzim/theme/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LikeButton extends StatelessWidget {
  final Function onPressed;

  LikeButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ClipOval(
      child: Material(
        color: primaryColor, // button color
        child: InkWell(
          splashColor: dangerColor, // inkwell color
          child: SizedBox(
              width: 56,
              height: 56,
              child: Icon(Icons.star, color: dangerColor, size: 32)),
          onTap: onPressed,
        ),
      ),
    ));
  }
}
