import 'package:flutter/material.dart';
import 'package:the_movie_wiki/ui/search_ui.dart';

class SearchRoute extends StatefulWidget {
  @override
  _SearchRouteState createState() => _SearchRouteState();
}

class _SearchRouteState extends State<SearchRoute> {
  @override
  void initState() {
    super.initState();
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => SearchUi()));
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
