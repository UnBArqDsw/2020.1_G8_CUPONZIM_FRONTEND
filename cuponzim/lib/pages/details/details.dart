import 'package:Cuponzim/widgets/base_screen.dart';
import 'package:Cuponzim/widgets/main_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:Cuponzim/theme/colors.dart';

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => new _DetailsState();
}

Size displaySize(BuildContext context) {
  return MediaQuery.of(context).size;
}

double displayHeight(BuildContext context) {
  return displaySize(context).height;
}

double displayWidth(BuildContext context) {
  return displaySize(context).width;
}

class _DetailsState extends State<Details> {
  var height = 40.0;

  @override
  void initState() {
    print("oi");
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        height = MediaQuery.of(context).size.height / 1.4;
      });
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness:
            Brightness.light // Dark == white status bar -- for IOS.
        ));

    return Scaffold(
      backgroundColor: lightColor,
      body: new Stack(fit: StackFit.expand, children: <Widget>[
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
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: lightColor,
                      size: 32,
                    )),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'Combo Big Mac',
                    style: TextStyle(
                      fontFamily:
                          Theme.of(context).textTheme.headline2.fontFamily,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                      color: lightColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        new Positioned(
          child: new Align(
              alignment: FractionalOffset.bottomCenter,
              child: Container(
                child: AnimatedContainer(
                  curve: Curves.fastOutSlowIn,
                  duration: Duration(milliseconds: 500),
                  width: MediaQuery.of(context).size.width,
                  height: height,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                      padding: EdgeInsets.only(left: 30, right: 30, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: ListView(
                              children: <Widget>[
                                Container(
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('lib/assets/mc.png'),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  height: 230,
                                ),
                                Padding(
                                  padding: EdgeInsets.all(10),
                                ),
                                Center(
                                  child: Text(
                                    'BIGMAC18',
                                    style: TextStyle(
                                        fontFamily: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            .fontFamily,
                                        fontSize: 32,
                                        fontWeight: FontWeight.bold,
                                        color: darkColor),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20),
                                ),
                                Center(
                                  child: Text(
                                    'Donec sem lorem, sodales egestas tortor ac, pretium ornare purus. Aliquam purus libero, mollis at augue a, sodales efficitur felis. Nam nulla. Nunc diam nisl, elementum ut fringilla a, congue et est. Aenean pellentesque mi vel quam consequat volutpat. Praesent sit amet commodo ligula, a tincidunt odio.',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        fontFamily: Theme.of(context)
                                            .textTheme
                                            .headline2
                                            .fontFamily,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: darkColor),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              )),
        ),
      ]),
    );
  }
}
