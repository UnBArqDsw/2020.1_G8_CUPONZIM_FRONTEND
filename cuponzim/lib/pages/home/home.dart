import 'package:Cuponzim/widgets/base_screen.dart';
import 'package:Cuponzim/widgets/cupom.dart';
import 'package:Cuponzim/widgets/main_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:Cuponzim/theme/colors.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  initState() {
    super.initState();
  }

  var _value;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness:
            Brightness.light // Dark == white status bar -- for IOS.
        ));

    Container dropdown = Container(
      padding: EdgeInsets.all(20.0),
      child: DropdownButtonHideUnderline(
          child: DropdownButton(
              dropdownColor: Colors.white,
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("First Item",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Second Item",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                  value: 2,
                ),
                DropdownMenuItem(
                    child: Text("Third Item",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
                    value: 3),
                DropdownMenuItem(
                    child: Text("Fourth Item",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
                    value: 4)
              ],
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              })),
    );

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
                topTitle: 'Os Queridinhos',
                backButton: true,
                headerWidget: dropdown,
                body: Column(
                  children: [
                    Cupom(
                        title: 'Combo Big Mac',
                        startPrice: '32,00',
                        finalPrice: '18,00',
                        isFavorite: true,
                        photo: 'lib/assets/mc.png',
                        onPressed: () {}),
                    Cupom(
                        title: 'Combo Big Mac',
                        startPrice: '32,00',
                        finalPrice: '18,00',
                        isFavorite: true,
                        photo: 'lib/assets/mc.png',
                        onPressed: () {}),
                    Cupom(
                        title: 'Combo Big Mac',
                        startPrice: '32,00',
                        finalPrice: '18,00',
                        isFavorite: true,
                        photo: 'lib/assets/mc.png',
                        onPressed: () {}),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
