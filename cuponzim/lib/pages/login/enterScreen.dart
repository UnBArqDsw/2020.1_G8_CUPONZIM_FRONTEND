import 'package:Cuponzim/routes/app_routes.dart';
import 'package:Cuponzim/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class EnterScreen extends StatefulWidget {
  @override
  _EnterScreenState createState() => new _EnterScreenState();
}

class _EnterScreenState extends State<EnterScreen> {
  var height = 40.0;
  final finaltext = Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Ainda não possui uma conta?',
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.w300, color: Colors.white)),
      Padding(
        padding: EdgeInsets.all(2.0),
      ),
      Text(
        'Cadastre-se',
        style: TextStyle(
            fontSize: 14, fontWeight: FontWeight.w700, color: primaryColor),
      )
    ],
  );

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 100), () {
      setState(() {
        height = MediaQuery.of(context).size.height / 1.4;
      });
    });
    super.initState();
  }

  _buildCard({
    Config config,
    Color backgroundColor = Colors.transparent,
    DecorationImage backgroundImage,
  }) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: WaveWidget(
        config: config,
        backgroundColor: backgroundColor,
        backgroundImage: backgroundImage,
        size: Size(double.infinity, double.infinity),
        waveAmplitude: 1,
      ),
    );
  }

  Widget build(BuildContext context) {
    RaisedButton cadastrar = RaisedButton(
      onPressed: () {
        Navigator.of(context).pushNamed(AppRoutes.LOGIN_PAGE);
      },
      color: primaryColor,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Text(
        'Entrar',
        style: TextStyle(
            fontSize: 18, fontWeight: FontWeight.w500, color: lightColor),
      ),
    );
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.white, // Color for Android
        statusBarBrightness:
            Brightness.dark // Dark == white status bar -- for IOS.
        ));
    return Scaffold(
        backgroundColor: primaryColor,
        body: new Stack(fit: StackFit.expand, children: <Widget>[
          _buildCard(
            backgroundColor: primaryColor,
            config: CustomConfig(
              gradients: [
                [successColor, successColor],
                [darkColor, darkColor],
                [dangerColor, dangerColor],
                [secondaryColor, secondaryColor]
              ],
              durations: [35000, 19440, 10800, 6000],
              heightPercentages: [0.20, 0.23, 0.25, 0.30],
              gradientBegin: Alignment.bottomLeft,
              gradientEnd: Alignment.topRight,
            ),
          ),
          Container(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(30.0),
                  ),
                  Center(
                    child: Image(
                      image: AssetImage('lib/assets/logo1.png'),
                      width: 150,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(150.0),
                  ),
                  Center(child: cadastrar),
                  Padding(
                    padding: EdgeInsets.all(15.0),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(AppRoutes.REGISTER_PAGE);
                    },
                    child: Center(child: finaltext),
                  ),
                ],
              ))
        ]));
  }
}
