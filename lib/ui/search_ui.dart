import 'package:flutter/material.dart';
import 'package:the_movie_wiki/ui/search_result_ui.dart';

class SearchUi extends StatefulWidget {
  @override
  _SearchUiState createState() => _SearchUiState();
}

class _SearchUiState extends State<SearchUi> {
  final _textController = TextEditingController();
  // bool _validate = false;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Color(0XFF0C0B10),
      appBar: AppBar(
        brightness: Brightness.dark,
        elevation: 8,
        backgroundColor: Color(0XFF0D0C11),
        title: Padding(
          padding: const EdgeInsets.only(top: 3, bottom: 3),
          child: TextField(
            controller: _textController,
            textAlign: TextAlign.start,
            decoration: InputDecoration(
              focusColor: Colors.white,
              hintText: 'Search',
              // errorText: _validate ? 'Value Can\'t be Empty' : null,
              contentPadding: EdgeInsets.all(16),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red),
                borderRadius: BorderRadius.circular(32),
              ),
              filled: true,
              fillColor: Colors.white,
            ),
            onSubmitted: (q) {
              if (q.isEmpty) {
                final snackBar = SnackBar(
                  content: Text('Value Can\'t be Empty'),
                  action: SnackBarAction(
                    label: 'close',
                    onPressed: () {
                      _scaffoldKey.currentState.hideCurrentSnackBar();
                    },
                  ),
                );
                Scaffold.of(context).showSnackBar(snackBar);
              } else {
                Route route = MaterialPageRoute(
                  builder: (context) => SearchResultUi(
                    searchQuery: q.toString(),
                  ),
                );
                Navigator.push(context, route);
              }
            },
            autofocus: true,
          ),
        ),
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.search,
                color: Colors.white,
                size: 60,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 8,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
