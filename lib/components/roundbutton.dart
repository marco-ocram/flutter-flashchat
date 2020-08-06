import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    @required this.buttoncolor,
    @required this.onpressfnc,
    @required this.buttontext
  }) ;
  final Color buttoncolor;
  final Function onpressfnc;
  final Text buttontext;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: buttoncolor,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onpressfnc,
          minWidth: 200.0,
          height: 42.0,
          child: buttontext,
        ),
      ),
    );
  }
}