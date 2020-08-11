// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'discover_tv_show.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DiscoverTvShowTearOff {
  const _$DiscoverTvShowTearOff();

// ignore: unused_element
  _DiscoverTvShow call(
      {@required @nullable List<TvShowResult> results,
      @required @nullable int page,
      @required @nullable int totalResults,
      @required @nullable int totalPages}) {
    return _DiscoverTvShow(
      results: results,
      page: page,
      totalResults: totalResults,
      totalPages: totalPages,
    );
  }
}

// ignore: unused_element
const $DiscoverTvShow = _$DiscoverTvShowTearOff();

mixin _$DiscoverTvShow {
  @nullable
  List<TvShowResult> get results;
  @nullable
  int get page;
  @nullable
  int get totalResults;
  @nullable
  int get totalPages;

  $DiscoverTvShowCopyWith<DiscoverTvShow> get copyWith;
}

abstract class $DiscoverTvShowCopyWith<$Res> {
  factory $DiscoverTvShowCopyWith(
          DiscoverTvShow value, $Res Function(DiscoverTvShow) then) =
      _$DiscoverTvShowCopyWithImpl<$Res>;
  $Res call(
      {@nullable List<TvShowResult> results,
      @nullable int page,
      @nullable int totalResults,
      @nullable int totalPages});
}

class _$DiscoverTvShowCopyWithImpl<$Res>
    implements $DiscoverTvShowCopyWith<$Res> {
  _$DiscoverTvShowCopyWithImpl(this._value, this._then);

  final DiscoverTvShow _value;
  // ignore: unused_field
  final $Res Function(DiscoverTvShow) _then;

  @override
  $Res call({
    Object results = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_value.copyWith(
      results:
          results == freezed ? _value.results : results as List<TvShowResult>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

abstract class _$DiscoverTvShowCopyWith<$Res>
    implements $DiscoverTvShowCopyWith<$Res> {
  factory _$DiscoverTvShowCopyWith(
          _DiscoverTvShow value, $Res Function(_DiscoverTvShow) then) =
      __$DiscoverTvShowCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable List<TvShowResult> results,
      @nullable int page,
      @nullable int totalResults,
      @nullable int totalPages});
}

class __$DiscoverTvShowCopyWithImpl<$Res>
    extends _$DiscoverTvShowCopyWithImpl<$Res>
    implements _$DiscoverTvShowCopyWith<$Res> {
  __$DiscoverTvShowCopyWithImpl(
      _DiscoverTvShow _value, $Res Function(_DiscoverTvShow) _then)
      : super(_value, (v) => _then(v as _DiscoverTvShow));

  @override
  _DiscoverTvShow get _value => super._value as _DiscoverTvShow;

  @override
  $Res call({
    Object results = freezed,
    Object page = freezed,
    Object totalResults = freezed,
    Object totalPages = freezed,
  }) {
    return _then(_DiscoverTvShow(
      results:
          results == freezed ? _value.results : results as List<TvShowResult>,
      page: page == freezed ? _value.page : page as int,
      totalResults:
          totalResults == freezed ? _value.totalResults : totalResults as int,
      totalPages: totalPages == freezed ? _value.totalPages : totalPages as int,
    ));
  }
}

class _$_DiscoverTvShow implements _DiscoverTvShow {
  const _$_DiscoverTvShow(
      {@required @nullable this.results,
      @required @nullable this.page,
      @required @nullable this.totalResults,
      @required @nullable this.totalPages});

  @override
  @nullable
  final List<TvShowResult> results;
  @override
  @nullable
  final int page;
  @override
  @nullable
  final int totalResults;
  @override
  @nullable
  final int totalPages;

  @override
  String toString() {
    return 'DiscoverTvShow(results: $results, page: $page, totalResults: $totalResults, totalPages: $totalPages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DiscoverTvShow &&
            (identical(other.results, results) ||
                const DeepCollectionEquality()
                    .equals(other.results, results)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)) &&
            (identical(other.totalResults, totalResults) ||
                const DeepCollectionEquality()
                    .equals(other.totalResults, totalResults)) &&
            (identical(other.totalPages, totalPages) ||
                const DeepCollectionEquality()
                    .equals(other.totalPages, totalPages)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(results) ^
      const DeepCollectionEquality().hash(page) ^
      const DeepCollectionEquality().hash(totalResults) ^
      const DeepCollectionEquality().hash(totalPages);

  @override
  _$DiscoverTvShowCopyWith<_DiscoverTvShow> get copyWith =>
      __$DiscoverTvShowCopyWithImpl<_DiscoverTvShow>(this, _$identity);
}

abstract class _DiscoverTvShow implements DiscoverTvShow {
  const factory _DiscoverTvShow(
      {@required @nullable List<TvShowResult> results,
      @required @nullable int page,
      @required @nullable int totalResults,
      @required @nullable int totalPages}) = _$_DiscoverTvShow;

  @override
  @nullable
  List<TvShowResult> get results;
  @override
  @nullable
  int get page;
  @override
  @nullable
  int get totalResults;
  @override
  @nullable
  int get totalPages;
  @override
  _$DiscoverTvShowCopyWith<_DiscoverTvShow> get copyWith;
}
