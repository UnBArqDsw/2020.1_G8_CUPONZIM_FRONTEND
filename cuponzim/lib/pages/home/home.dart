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
      child: DropdownButtonHideUnderline(
          child: DropdownButton(
              dropdownColor: Colors.white,
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text("Park Shopping",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text("Águas Claras Shopping",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      )),
                  value: 2,
                ),
                DropdownMenuItem(
                    child: Text("Taguatinga Shopping",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        )),
                    value: 3),
                DropdownMenuItem(
                    child: Text("Outlet Premium",
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
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Cupom(
                          title: 'Combo Big Mac',
                          startPrice: '32,00',
                          finalPrice: '18,00',
                          isFavorite: true,
                          photo: 'lib/assets/mc.png',
                          onPressed: () {}),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Cupom(
                          title: 'Pizza média',
                          startPrice: '30,00',
                          finalPrice: '12,00',
                          isFavorite: false,
                          photo: 'lib/assets/pizza.png',
                          onPressed: () {}),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Cupom(
                          title: 'Iphone XS',
                          startPrice: '500,00',
                          finalPrice: '499,00',
                          isFavorite: true,
                          photo: 'lib/assets/phone.jpg',
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
