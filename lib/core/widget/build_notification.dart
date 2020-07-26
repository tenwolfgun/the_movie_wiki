import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BuildNotification extends StatelessWidget {
  final String errorMessage;

  const BuildNotification({Key key, this.errorMessage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Card(
        color: Colors.grey.shade900,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 8,
            bottom: 8,
          ),
          child: ListTile(
            title: Text(
              errorMessage,
              style: TextStyle(
                color: Colors.white,
                height: 1.5,
                fontSize: 45.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
