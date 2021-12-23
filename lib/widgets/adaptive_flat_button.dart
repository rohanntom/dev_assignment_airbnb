import 'package:flutter/material.dart';

class AdaptiveFlatButton extends StatelessWidget {
  final String text;
  final VoidCallback handler;

  AdaptiveFlatButton(this.text, this.handler);

  @override
  Widget build(BuildContext context) {
    // return Platform.isIOS
    //     ? CupertinoButton(
    //         child: Text(
    //           text,
    //           style: TextStyle(
    //             fontWeight: FontWeight.bold,
    //           ),
    //         ),
    //         onPressed: handler,
    //       )
    //     :
    return FlatButton(
      textColor: Colors.black,
      child: Text(
        text,
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: handler,
    );
  }
}
