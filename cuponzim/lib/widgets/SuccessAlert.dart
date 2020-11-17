import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void _okSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
            child: Center(
          child: Container(
              width: 200,
              height: 200,
              child: FlareActor(
                'lib/assets/okok.flr',
                animation: 'ok',
              )),
        ));
      });
}
