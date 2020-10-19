import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/widgets.dart';
import 'package:Cuponzim/widgets/button.dart';
import 'package:Cuponzim/widgets/cupom.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  /*  goTo() {
    new Future.delayed(const Duration(seconds: 3),
        () =>  Navigator.pushNamedAndRemoveUntil(context, "/enter", (r) => false),);
  } */

  initState() {
    super.initState();
    /* goTo(); */
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      body: Theme(
          data: new ThemeData(
              brightness: Brightness.dark,
              inputDecorationTheme: new InputDecorationTheme(
                labelStyle:
                    new TextStyle(color: Colors.tealAccent, fontSize: 25.0),
              )),
          isMaterialAppTheme: true,
          child: Stack(
            children: <Widget>[
              SplashScreen(
                seconds: 3,
                gradientBackground: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xffDD7230), Color(0xff854D27)],
                ),
                loaderColor: Colors.transparent,
              ),
              FadeTransition(
                  opacity: animation,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(40),
                          child: Cupom(
                            title: 'Combo Big Mac',
                            startPrice: '32,00',
                            finalPrice: '18,00',
                            isFavorite: true,
                            onPressed: () {},
                          ),
                        ),
                        
                      ],
                    ),
                  ))
            ],
          )),
    );
  }
}
