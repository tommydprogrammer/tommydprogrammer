import 'package:flutter/material.dart';
import 'package:reminderz/core/style.dart';

class SolidButton extends StatelessWidget {
  final String text;
  final Function onPressed;
  final Color color;
  final Color textColor;
  final double textSize;
  final double elevation;
  final BorderSide border;
  final bool filled;
  final Color fillColor;
  final double width;
  SolidButton({
    this.text,
    this.onPressed,
    this.color: kPrimaryColor,
    this.textColor = Colors.black,
    this.textSize = 14.0,
    this.elevation = 3.0,
    this.filled: true,
    this.fillColor: kPrimaryColor,
    this.border = BorderSide.none,
    this.width = 150.0,
  });
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(width: width),
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w300,
            fontSize: textSize,
          ),
        ),
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
              filled ? fillColor : Colors.white.withOpacity(0.7)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
              side: border,
            ),
          ),
          padding: MaterialStateProperty.all<EdgeInsets>(
            EdgeInsets.all(20.0),
          ),
        ),
      ),
    );
  }
}
