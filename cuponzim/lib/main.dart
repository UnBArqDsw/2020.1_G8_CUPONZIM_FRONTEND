import 'package:Cuponzim/routes/routes.dart';
import 'package:Cuponzim/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/date_symbol_data_local.dart';

void main() => runApp(CuponzimApp());

class CuponzimApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    initializeDateFormatting("pt-BR", null);
    return MaterialApp(
        title: 'Cuponzim',
        theme: CuponzimTheme,
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash',
        onGenerateRoute: (settings) {
          return CupertinoPageRoute(
            builder: (context) => Routes.routes[settings.name](context),
          );
        });
  }
}
