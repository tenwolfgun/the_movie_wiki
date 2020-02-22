import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFF393e46),
      body: NestedScrollView(
        headerSliverBuilder: (context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              brightness: Brightness.dark,
              elevation: 4,
              backgroundColor: Color(0XFF4ecca3),
              title: Padding(
                padding:
                    const EdgeInsets.only(top: 8, bottom: 8, left: 0, right: 0),
                child: TextField(
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xffeeeeee),
                      enabledBorder: OutlineInputBorder(
                        // width: 0.0 produces a thin "hairline" border
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0.0),
                      ),
                      border: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 3, color: Colors.redAccent),
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                      ),
                      labelText: 'Movies',
                      labelStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(Icons.search, color: Color(0xff232931))),
                ),
              ),
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    left: 0,
                    right: 12,
                    bottom: 8,
                    top: 8,
                  ),
                  child: Icon(
                    FontAwesomeIcons.solidHeart,
                    color: Color(0XFFeeeeee),
                    size: 30,
                  ),
                ),
              ],
              pinned: true,
              floating: true,
              forceElevated: innerBoxIsScrolled,
            )
          ];
        },
        body: Container(),
      ),
    );
  }
}
