import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

class FavoriteTvShows extends Table {
  IntColumn get id => integer()();
  TextColumn get name => text().withLength(min: 1, max: 255)();
  TextColumn get posterPath => text().withLength(min: 1, max: 255)();
  RealColumn get voteAverage => real()();

  @override
  Set<Column> get primaryKey => {id};
}
