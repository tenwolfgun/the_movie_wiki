import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ErrorState extends StatelessWidget {
  final String errorMessage;
  final VoidCallback _onPressed;

  const ErrorState({
    Key key,
    this.errorMessage,
    VoidCallback onPressed,
  })  : _onPressed = onPressed,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              errorMessage,
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.w600,
                color: const Color(0XFFEEEEEE),
              ),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: RaisedButton(
                onPressed: _onPressed,
                color: const Color(0XFFEB4B1F),
                child: Text(
                  'Retry',
                  style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0XFFEEEEEE),
                  ),
                ),
                // borderSide: const BorderSide(
                //   color: Color(0xff519c28),
                // ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
