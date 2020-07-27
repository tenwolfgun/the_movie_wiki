// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'reviews.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ReviewsTearOff {
  const _$ReviewsTearOff();

// ignore: unused_element
  _Reviews call({@required @nullable List<ReviewResult> results}) {
    return _Reviews(
      results: results,
    );
  }
}

// ignore: unused_element
const $Reviews = _$ReviewsTearOff();

mixin _$Reviews {
  @nullable
  List<ReviewResult> get results;

  $ReviewsCopyWith<Reviews> get copyWith;
}

abstract class $ReviewsCopyWith<$Res> {
  factory $ReviewsCopyWith(Reviews value, $Res Function(Reviews) then) =
      _$ReviewsCopyWithImpl<$Res>;
  $Res call({@nullable List<ReviewResult> results});
}

class _$ReviewsCopyWithImpl<$Res> implements $ReviewsCopyWith<$Res> {
  _$ReviewsCopyWithImpl(this._value, this._then);

  final Reviews _value;
  // ignore: unused_field
  final $Res Function(Reviews) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results:
          results == freezed ? _value.results : results as List<ReviewResult>,
    ));
  }
}

abstract class _$ReviewsCopyWith<$Res> implements $ReviewsCopyWith<$Res> {
  factory _$ReviewsCopyWith(_Reviews value, $Res Function(_Reviews) then) =
      __$ReviewsCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<ReviewResult> results});
}

class __$ReviewsCopyWithImpl<$Res> extends _$ReviewsCopyWithImpl<$Res>
    implements _$ReviewsCopyWith<$Res> {
  __$ReviewsCopyWithImpl(_Reviews _value, $Res Function(_Reviews) _then)
      : super(_value, (v) => _then(v as _Reviews));

  @override
  _Reviews get _value => super._value as _Reviews;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_Reviews(
      results:
          results == freezed ? _value.results : results as List<ReviewResult>,
    ));
  }
}

class _$_Reviews implements _Reviews {
  const _$_Reviews({@required @nullable this.results});

  @override
  @nullable
  final List<ReviewResult> results;

  @override
  String toString() {
    return 'Reviews(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reviews &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  _$ReviewsCopyWith<_Reviews> get copyWith =>
      __$ReviewsCopyWithImpl<_Reviews>(this, _$identity);
}

abstract class _Reviews implements Reviews {
  const factory _Reviews({@required @nullable List<ReviewResult> results}) =
      _$_Reviews;

  @override
  @nullable
  List<ReviewResult> get results;
  @override
  _$ReviewsCopyWith<_Reviews> get copyWith;
}
