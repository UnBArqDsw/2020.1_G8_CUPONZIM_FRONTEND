import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

void _errorSheet(context) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return Container(
            child: Center(
          child: Column(
            children: [
              Text(
                'Opss! Algo deu errado!',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xffB8B8B8)),
              ),
              Container(
                  width: 200,
                  height: 200,
                  child: FlareActor(
                    'lib/assets/no.flr',
                    animation: 'action',
                  )),
            ],
          ),
        ));
      });
}
