import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainTile extends StatelessWidget {
  final Function onTap;
  final String photo;

  MainTile({this.onTap, this.photo});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(photo), fit: BoxFit.contain),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 230,
    );
  }
}
