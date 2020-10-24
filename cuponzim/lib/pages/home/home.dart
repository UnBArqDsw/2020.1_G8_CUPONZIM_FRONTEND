import 'package:Cuponzim/routes/app_routes.dart';
import 'package:Cuponzim/widgets/base_screen.dart';
import 'package:Cuponzim/widgets/cupom.dart';
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

  Size displaySize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double displayWidth(BuildContext context) {
    return displaySize(context).width;
  }

  double displayHeight(BuildContext context) {
    return displaySize(context).height;
  }

  var _value;
  bool isMenuClosed = true;

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

    Widget menu(context) {
      return Padding(
        padding: EdgeInsets.fromLTRB(0, 0, displayWidth(context) * 0.15, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Flexible(
              flex: 6,
              child: Container(
                color: primaryColor,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      child: Column(
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(
                                  top: displayHeight(context) / 12, left: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isMenuClosed = !isMenuClosed;
                                      });
                                    },
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white,
                                      size: 32,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 40),
                                  ),
                                  Text('Park Shopping',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 32)),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: displayHeight(context) / 8),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isMenuClosed = !isMenuClosed;
                                      });
                                    },
                                    child: Text('Lojas',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 26)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isMenuClosed = !isMenuClosed;
                                      });
                                    },
                                    child: Text('Promoções',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 26)),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                    GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isMenuClosed = !isMenuClosed;
                                      });
                                    },
                                    child: Text('Fale Conosco',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 26)),
                                  ),
                                   Padding(
                                    padding: EdgeInsets.only(top: 10),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isMenuClosed = !isMenuClosed;
                                        });
                                        new Future.delayed(
                                            const Duration(milliseconds: 300),
                                            () => Navigator.of(context)
                                                .pushNamed(
                                                    AppRoutes.SETTINGS_PAGE));
                                      },
                                      child: Text('Configurações',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 26))),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget dashboard(context) {
      return AnimatedPositioned(
        top: 0,
        bottom: 0,
        left: isMenuClosed
            ? 0
            : displayWidth(context) - displayWidth(context) * 0.15,
        right: isMenuClosed ? 0 : -90,
        duration: Duration(milliseconds: 200),
        child: Material(
          elevation: 8,
          color: lightColor,
          child: BaseScreen(
            topTitle: 'Os Queridinhos',
            backButton: false,
            headerWidget: dropdown,
            menu: () {
              setState(() {
                isMenuClosed = !isMenuClosed;
              });
            },
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
        ),
      );
    }

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
            children: <Widget>[menu(context), dashboard(context)],
          )),
    );
  }
}
