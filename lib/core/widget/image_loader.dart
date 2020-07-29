import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ImageLoader extends StatelessWidget {
  const ImageLoader({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Shimmer.fromColors(
        baseColor: Colors.grey[300],
        highlightColor: Colors.grey[100],
        child: Container(
          margin: const EdgeInsets.all(4),
          // width: 144,
          // height: 203,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[400],
          ),
        ),
      ),
    );
  }
}
