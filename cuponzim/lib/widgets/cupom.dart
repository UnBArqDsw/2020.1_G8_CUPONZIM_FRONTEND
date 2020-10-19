import 'package:Cuponzim/theme/colors.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cupom extends StatelessWidget {
  final String title;
  final String startPrice;
  final String finalPrice;
  final bool isFavorite;
  final String photo;
  final Function onPressed;

  Cupom(
      {this.title,
      this.onPressed,
      this.startPrice,
      this.photo,
      this.finalPrice,
      this.isFavorite});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(photo), fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 230,
      child: Column(children: [
        Container(
          padding: EdgeInsets.all(10),
          alignment: Alignment.topRight,
          child: Icon(
            Icons.star,
            color: isFavorite ? dangerColor : Colors.grey,
            size: 32.0,
          ),
        ),
        Padding(
          padding: EdgeInsets.all(26),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
            color: Color.fromRGBO(215, 38, 56, 0.6),
            borderRadius: BorderRadius.circular(10),
          ),
          padding: EdgeInsets.only(top: 10),
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: Theme.of(context).textTheme.headline2.fontFamily,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                  color: lightColor,
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'R\$' + startPrice,
                        style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontFamily:
                              Theme.of(context).textTheme.headline2.fontFamily,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: lightColor,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Center(
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 28.0,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(5),
                      ),
                      Text(
                        'R\$' + finalPrice,
                        style: TextStyle(
                          fontFamily:
                              Theme.of(context).textTheme.headline2.fontFamily,
                          fontSize: 26,
                          fontWeight: FontWeight.w500,
                          color: lightColor,
                        ),
                      ),
                    ],
                  )),
              Padding(
                  padding: EdgeInsets.all(1),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Ver mais',
                        style: TextStyle(
                          fontFamily:
                              Theme.of(context).textTheme.headline2.fontFamily,
                          fontSize: 20,
                          fontWeight: FontWeight.w300,
                          color: lightColor,
                        ),
                      ),
                    ],
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
