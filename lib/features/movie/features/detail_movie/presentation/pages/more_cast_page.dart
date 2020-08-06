import 'package:flutter/material.dart';
import 'package:the_movie_wiki/core/entities/credits/cast.dart';
import 'package:the_movie_wiki/core/widget/cast_item.dart';

class MoreCastPage extends StatelessWidget {
  final List<Cast> cast;

  const MoreCastPage({Key key, this.cast}) : super(key: key);

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
