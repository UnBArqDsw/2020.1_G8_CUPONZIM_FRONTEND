import 'package:Cuponzim/theme/colors.dart';
import 'package:flutter/material.dart';

class BaseScreen extends StatelessWidget {
  final String topTitle;
  final String bottomTitle;
  final Widget body;
  final bool dontBackButton;

  BaseScreen(
      {this.topTitle,
      this.bottomTitle,
      this.body,
      this.dontBackButton = false});

  @override
  Widget build(BuildContext context) {
    final _screenSizeHeight = MediaQuery.of(context).size.height - 166;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: !dontBackButton,
        iconTheme: IconThemeData(color: darkColor),
        backgroundColor: Colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  topTitle,
                  style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.headline1.fontFamily,
                    fontSize: Theme.of(context).textTheme.headline1.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.headline1.fontWeight,
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                ),
                Text(
                  bottomTitle,
                  style: TextStyle(
                    fontFamily:
                        Theme.of(context).textTheme.headline1.fontFamily,
                    fontSize: Theme.of(context).textTheme.headline1.fontSize,
                    fontWeight:
                        Theme.of(context).textTheme.headline1.fontWeight,
                    color: Theme.of(context).textTheme.headline1.color,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: _screenSizeHeight,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                child: Container(
                  height: _screenSizeHeight - 20,
                  child: body,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
