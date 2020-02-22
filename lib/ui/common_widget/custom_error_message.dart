import 'package:flutter/material.dart';

class CustomErrorMessage extends StatefulWidget {
  final IconData icon;
  final Color iconColor;
  final String errorMessage;
  final TextStyle textStyle;
  final double iconSize;

  CustomErrorMessage({
    Key key,
    @required this.icon,
    this.iconColor,
    @required this.errorMessage,
    this.textStyle,
    this.iconSize,
  }) : super(key: key);

  @override
  _CustomErrorMessageState createState() => _CustomErrorMessageState();
}

class _CustomErrorMessageState extends State<CustomErrorMessage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8,
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              widget.icon,
              color: widget.iconColor,
              size: widget.iconSize,
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 8,
              ),
              child: Text(
                widget.errorMessage,
                style: widget.textStyle,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
