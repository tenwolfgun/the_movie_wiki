import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:the_movie_wiki/ui/detail_tv_show/bloc/bloc.dart';

class DetailTvReview extends StatefulWidget {
  final DetailTvShowState state;
  final bool showTitle;

  DetailTvReview({
    Key key,
    @required this.state,
    @required this.showTitle,
  }) : super(key: key);

  @override
  _DetailTvReviewState createState() => _DetailTvReviewState();
}

class _DetailTvReviewState extends State<DetailTvReview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      color: widget.showTitle ? Color(0XFF0C0B10) : null,
      child: ListView.builder(
        padding: EdgeInsets.only(top: 16),
        shrinkWrap: true,
        itemCount: widget.state.result.reviews.results.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: ListTile(
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text(
                widget.state.result.reviews.results[index].author.toString(),
                style: TextStyle(
                  color: Colors.white,
                  height: 1.5,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: ExpandablePanel(
                collapsed: Text(
                  widget.state.result.reviews.results[index].content.toString(),
                  style: TextStyle(
                      color: Colors.white54,
                      // fontSize: 14,
                      height: 1.5,
                      letterSpacing: 0),
                  textAlign: TextAlign.left,
                  // textScaleFactor: 1,
                  softWrap: true,
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                ),
                expanded: Text(
                  widget.state.result.reviews.results[index].content.toString(),
                  style: TextStyle(
                      color: Colors.white54,
                      // fontSize: 14,
                      height: 1.5,
                      letterSpacing: 0),
                  textAlign: TextAlign.left,
                  softWrap: true,
                  // textScaleFactor: 1,
                ),
                hasIcon: false,
                tapBodyToCollapse: true,
              ),
              isThreeLine: true,
            ),
          );
        },
      ),
    );
  }
}
