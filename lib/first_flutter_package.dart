library first_flutter_package;

import 'package:flutter/material.dart';

class CustomAlertDialog {

  static Future showCustomAlertDialog({
    @required BuildContext context,
    @required Widget widget
  }){

    assert(context != null, "context is null");
    assert(widget != null, "widget is null");

    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(50))
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              widget,
              MaterialButton(
                color: Colors.white30,
                child: new Text('Close dart'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          ),
          elevation: 90,
        );
      }
    );

  }

}