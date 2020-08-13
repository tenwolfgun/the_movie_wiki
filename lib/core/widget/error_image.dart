import 'package:flutter/material.dart';

class ErrorImage extends StatelessWidget {
  const ErrorImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.error,
        color: const Color(0XFFEB4B1F),
      ),
    );
  }
}
