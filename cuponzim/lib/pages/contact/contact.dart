import 'package:Cuponzim/widgets/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:Cuponzim/theme/colors.dart';
import 'package:Cuponzim/widgets/base_screen.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation;

  initState() {
    super.initState();
    /* goTo(); */
    controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this);
    animation = CurvedAnimation(parent: controller, curve: Curves.easeIn);
    controller.forward();
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
              BaseScreen(
                topTitle: "Fale conosco",
                bottomTitle:
                    "Alguma dúvida, reclamação ou sugestão de melhoria ? Mande mensagem para nossa equipe",
                body: Column(children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 100, 30, 20),
                      child: Container(
                          width: displayWidth(context) * 0.8,
                          height: displayHeight(context) * 0.2,
                          color: lightColor,
                          child: TextField(
                            maxLines: null,
                            style: TextStyle(color: darkColor),
                            decoration: InputDecoration(
                              fillColor: Colors.red,
                              border: InputBorder.none,
                              hintText: ' Insira aqui sua mensagem',
                              hintStyle:
                                  TextStyle(fontSize: 14, color: darkColor),
                              labelStyle: new TextStyle(color: Colors.red),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: darkColor),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: darkColor),
                              ),
                            ),
                          ))),
                         Container(
                          width: displayWidth(context) * 0.5,
                          height: displayHeight(context) * 0.1,
                           color: primaryColor,
                           child: 
                           Button(onPressed: null, title: "Enviar",),
                         )     
                ]),
                dontBackButton: false,
              ),
            ],
          )),
    );
  }
}
