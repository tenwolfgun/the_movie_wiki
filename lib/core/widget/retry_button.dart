import 'package:flutter/material.dart';

class RetryButton extends StatelessWidget {
  const RetryButton({
    Key key,
    VoidCallback onPressed,
  })  : _onPressed = onPressed,
        super(key: key);

  final VoidCallback _onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 16, 16, 0),
        child: OutlineButton.icon(
          color: const Color(0XFFEB4B1F),
          onPressed: _onPressed,
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Color(0XFFEB4B1F),
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          icon: const Icon(
            Icons.refresh,
            color: const Color(0XFFEEEEEE),
          ),
          label: const Text(
            "Retry",
            style: TextStyle(
              color: const Color(0XFFEEEEEE),
            ),
          ),
        ),
      ),
    );
  }
}
