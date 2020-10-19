import 'package:Cuponzim/theme/colors.dart';
import 'package:flutter/material.dart';

final ThemeData CuponzimTheme = _buildCuponzimTheme();

ThemeData _buildCuponzimTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
    primaryColor: primaryColor,
    accentColor: secondaryColor,
    buttonTheme: base.buttonTheme.copyWith(
      buttonColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
      disabledColor: Colors.grey,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      minWidth: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 16)
    ),
    scaffoldBackgroundColor: Colors.white,
    canvasColor: Colors.transparent,
    cardTheme: CardTheme(
      color: lightColor,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(7),
      ),
    ),
    textSelectionColor: darkColor,
    errorColor: dangerColor,
    primaryColorDark: darkColor,
    primaryColorLight: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: primaryColor,
      ),
      headline2: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 24,
        color: darkColor,
      ),
      headline3: TextStyle(
        fontFamily: 'Roboto',
        fontSize: 16,
        color: darkColor,
      ),
    ),
  );
}
