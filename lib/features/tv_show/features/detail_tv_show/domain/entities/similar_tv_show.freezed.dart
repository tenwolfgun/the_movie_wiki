// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'similar_tv_show.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$SimilarTvShowTearOff {
  const _$SimilarTvShowTearOff();

// ignore: unused_element
  _SimilarTvShow call({@required @nullable List<TvShowResult> results}) {
    return _SimilarTvShow(
      results: results,
    );
  }
}

// ignore: unused_element
const $SimilarTvShow = _$SimilarTvShowTearOff();

mixin _$SimilarTvShow {
  @nullable
  List<TvShowResult> get results;

  $SimilarTvShowCopyWith<SimilarTvShow> get copyWith;
}

abstract class $SimilarTvShowCopyWith<$Res> {
  factory $SimilarTvShowCopyWith(
          SimilarTvShow value, $Res Function(SimilarTvShow) then) =
      _$SimilarTvShowCopyWithImpl<$Res>;
  $Res call({@nullable List<TvShowResult> results});
}

class _$SimilarTvShowCopyWithImpl<$Res>
    implements $SimilarTvShowCopyWith<$Res> {
  _$SimilarTvShowCopyWithImpl(this._value, this._then);

  final SimilarTvShow _value;
  // ignore: unused_field
  final $Res Function(SimilarTvShow) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results:
          results == freezed ? _value.results : results as List<TvShowResult>,
    ));
  }
}

abstract class _$SimilarTvShowCopyWith<$Res>
    implements $SimilarTvShowCopyWith<$Res> {
  factory _$SimilarTvShowCopyWith(
          _SimilarTvShow value, $Res Function(_SimilarTvShow) then) =
      __$SimilarTvShowCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<TvShowResult> results});
}

class __$SimilarTvShowCopyWithImpl<$Res>
    extends _$SimilarTvShowCopyWithImpl<$Res>
    implements _$SimilarTvShowCopyWith<$Res> {
  __$SimilarTvShowCopyWithImpl(
      _SimilarTvShow _value, $Res Function(_SimilarTvShow) _then)
      : super(_value, (v) => _then(v as _SimilarTvShow));

  @override
  _SimilarTvShow get _value => super._value as _SimilarTvShow;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_SimilarTvShow(
      results:
          results == freezed ? _value.results : results as List<TvShowResult>,
    ));
  }
}

class _$_SimilarTvShow implements _SimilarTvShow {
  const _$_SimilarTvShow({@required @nullable this.results});

  @override
  @nullable
  final List<TvShowResult> results;

  @override
  String toString() {
    return 'SimilarTvShow(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SimilarTvShow &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  _$SimilarTvShowCopyWith<_SimilarTvShow> get copyWith =>
      __$SimilarTvShowCopyWithImpl<_SimilarTvShow>(this, _$identity);
}

abstract class _SimilarTvShow implements SimilarTvShow {
  const factory _SimilarTvShow(
      {@required @nullable List<TvShowResult> results}) = _$_SimilarTvShow;

  @override
  @nullable
  List<TvShowResult> get results;
  @override
  _$SimilarTvShowCopyWith<_SimilarTvShow> get copyWith;
}
