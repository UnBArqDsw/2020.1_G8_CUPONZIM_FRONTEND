import 'package:Cuponzim/theme/colors.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final String topTitle;
  final String bottomTitle;
  final Widget body;
  final bool dontBackButton;

  BaseScreen(
      {this.topTitle,
      this.bottomTitle,
      this.body,
      this.dontBackButton = false});

  @override
  Widget build(BuildContext context) {
    final _screenSizeHeight = MediaQuery.of(context).size.height - 166;

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
      body: ListView(
        children: <Widget>[
          Container(
            color: dangerColor,
            padding: EdgeInsets.only(top: 30, bottom: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 0, left: 20),
                  child: Container(
                      width: displayWidth(context),
                      height: displayHeight(context) * 0.08,
                      child: AppBar(
                        elevation: 0,
                        automaticallyImplyLeading: !dontBackButton,
                        iconTheme: IconThemeData(color: lightColor),
                        backgroundColor: dangerColor,
                      )),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 15, left: 40),
                    child: Container(
                      child: Text(
                        topTitle,
                        style: TextStyle(
                          fontFamily:
                              Theme.of(context).textTheme.headline1.fontFamily,
                          fontSize:
                              Theme.of(context).textTheme.headline3.fontSize,
                          fontWeight:
                              Theme.of(context).textTheme.subtitle1.fontWeight,
                          color: Theme.of(context).textTheme.headline1.color,
                        ),
                      ),
                    )),
                Container(
                    child: Padding(
                  padding: EdgeInsets.only(top: 10, left: 40),
                  child: Container(
                    width: displayWidth(context),
                    height: displayHeight(context) * 0.05,
                    color: dangerColor,
                    child: Text(
                      bottomTitle,
                      style: TextStyle(
                        fontFamily:
                            Theme.of(context).textTheme.headline1.fontFamily,
                        fontSize:
                            Theme.of(context).textTheme.headline6.fontSize,
                        fontWeight:
                            Theme.of(context).textTheme.headline1.fontWeight,
                        color: Theme.of(context).textTheme.headline1.color,
                      ),
                    ),
                  ),
                )),
              ],
            ),
          ),
          Container(
            color: lightColor,
            width: displayWidth(context),
            height: displayHeight(context)*0.8,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Container(
                  child: body,
                ),
            ),
          ),
        ],
      ),
    );
  }
}
