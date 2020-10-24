import 'package:Cuponzim/widgets/base_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:Cuponzim/theme/colors.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
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

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness:
            Brightness.light // Dark == white status bar -- for IOS.
        ));

    Container card = Container(
      width: 350,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.grey,
          offset: Offset(0.0, 0.5), //(x,y)
          blurRadius: 5.0,
        ),
      ], color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image(
            image: AssetImage('lib/assets/logo1.png'),
            width: 120,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.gps_fixed, color: dangerColor),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text("Localização",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
              Padding(padding: EdgeInsets.only(right: 100)),
              Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
            ],
          ),
          new Divider(),
          Padding(padding: EdgeInsets.only(top: 10)),
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.star, color: dangerColor),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text("Lojas Favoritas",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
              Padding(padding: EdgeInsets.only(right: 100)),
              Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
            ],
          ),
           new Divider(),
          Padding(padding: EdgeInsets.only(top: 10)),
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.message, color: dangerColor),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text("Fale Conosco",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
              Padding(padding: EdgeInsets.only(right: 100)),
              Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
            ],
          ),
           new Divider(),
          Padding(padding: EdgeInsets.only(top: 10)),
            Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(Icons.close, color: dangerColor),
              Padding(padding: EdgeInsets.only(left: 10)),
              Text("Sair",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  )),
              Padding(padding: EdgeInsets.only(right: 100)),
              Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
            ],
          ),
          
          
          
          new Divider(),
          Padding(padding: EdgeInsets.only(top: 30)),
          Text("Cupomzin 2020",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w300,
                color: Colors.grey,
              )),
        ],
      ),
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
                topTitle: 'Configurações',
                backButton: true,
                headerWidget: Container(),
                menu: () {},
                body: Column(
                  children: [
                    card
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
