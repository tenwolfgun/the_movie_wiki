import 'package:flutter/material.dart';

import '../../../../../../core/domain/entities/credits/cast.dart';
import '../../../../../../core/widget/cast_item.dart';

class MoreCastPage extends StatelessWidget {
  const MoreCastPage({
    Key key,
    this.cast,
  }) : super(key: key);

  final List<Cast> cast;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF0C0B10),
      appBar: AppBar(),
      body: Scrollbar(
        child: ListView.builder(
          padding: const EdgeInsets.only(top: 8, bottom: 32),
          shrinkWrap: true,
          itemCount: cast.length,
          itemBuilder: (_, i) {
            return InkWell(
              child: CastItem(
                cast: cast[i],
              ),
            );
          },
        ),
      ),
    );
  }
}
