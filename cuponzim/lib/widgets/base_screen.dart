import 'package:Cuponzim/theme/colors.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final String topTitle;

  final Widget body;
  final Widget headerWidget;
  final bool backButton;
  final Function menu;

  BaseScreen({this.topTitle, this.body, this.headerWidget, this.backButton, this.menu});

  @override
  Widget build(BuildContext context) {
    Size displaySize(BuildContext context) {
      return MediaQuery.of(context).size;
    }

    double displayHeight(BuildContext context) {
      return displaySize(context).height;
    }

    double displayWidth(BuildContext context) {
      return displaySize(context).width;
    }

    return Scaffold(
      backgroundColor: lightColor,
      body: Container(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: displayHeight(context) / 3,
                width: displayWidth(context),
                decoration: BoxDecoration(
                  color: dangerColor,
                ),
                child: Container(
                  padding: EdgeInsets.only(
                      top: displayHeight(context) / 12, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      backButton
                          ? GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: lightColor,
                                size: 32,
                              ))
                          : GestureDetector(
                              onTap: menu,
                              child: Image(
                          image: AssetImage('lib/assets/hamb.png'),
                          width: 20,
                        ),),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: Text(
                          topTitle,
                          style: TextStyle(
                            fontFamily: Theme.of(context)
                                .textTheme
                                .headline2
                                .fontFamily,
                            fontSize: 32,
                            fontWeight: FontWeight.w500,
                            color: lightColor,
                          ),
                        ),
                      ),
                      headerWidget,
                    ],
                  ),
                ),
              ),
              Expanded(
                  child: ListView(children: [
                Container(
                    padding: EdgeInsets.only(left: 10, right: 10), child: body)
              ])),
            ]),
      ),
    );
  }
}
