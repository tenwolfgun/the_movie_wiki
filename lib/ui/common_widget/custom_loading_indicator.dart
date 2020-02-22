import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatefulWidget {
  final Color color;

  CustomLoadingIndicator({
    Key key,
    @required this.color,
  }) : super(key: key);

  @override
  _CustomLoadingIndicatorState createState() => _CustomLoadingIndicatorState();
}

class _CustomLoadingIndicatorState extends State<CustomLoadingIndicator> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        valueColor: AlwaysStoppedAnimation(
          widget.color,
        ),
      ),
    );
  }
}
