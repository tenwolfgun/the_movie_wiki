// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'videos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$VideosTearOff {
  const _$VideosTearOff();

// ignore: unused_element
  _Videos call({@required @nullable List<VideoResult> results}) {
    return _Videos(
      results: results,
    );
  }
}

// ignore: unused_element
const $Videos = _$VideosTearOff();

mixin _$Videos {
  @nullable
  List<VideoResult> get results;

  $VideosCopyWith<Videos> get copyWith;
}

abstract class $VideosCopyWith<$Res> {
  factory $VideosCopyWith(Videos value, $Res Function(Videos) then) =
      _$VideosCopyWithImpl<$Res>;
  $Res call({@nullable List<VideoResult> results});
}

class _$VideosCopyWithImpl<$Res> implements $VideosCopyWith<$Res> {
  _$VideosCopyWithImpl(this._value, this._then);

  final Videos _value;
  // ignore: unused_field
  final $Res Function(Videos) _then;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_value.copyWith(
      results:
          results == freezed ? _value.results : results as List<VideoResult>,
    ));
  }
}

abstract class _$VideosCopyWith<$Res> implements $VideosCopyWith<$Res> {
  factory _$VideosCopyWith(_Videos value, $Res Function(_Videos) then) =
      __$VideosCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<VideoResult> results});
}

class __$VideosCopyWithImpl<$Res> extends _$VideosCopyWithImpl<$Res>
    implements _$VideosCopyWith<$Res> {
  __$VideosCopyWithImpl(_Videos _value, $Res Function(_Videos) _then)
      : super(_value, (v) => _then(v as _Videos));

  @override
  _Videos get _value => super._value as _Videos;

  @override
  $Res call({
    Object results = freezed,
  }) {
    return _then(_Videos(
      results:
          results == freezed ? _value.results : results as List<VideoResult>,
    ));
  }
}

class _$_Videos implements _Videos {
  const _$_Videos({@required @nullable this.results});

  @override
  @nullable
  final List<VideoResult> results;

  @override
  String toString() {
    return 'Videos(results: $results)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Videos &&
            (identical(other.results, results) ||
                const DeepCollectionEquality().equals(other.results, results)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(results);

  @override
  _$VideosCopyWith<_Videos> get copyWith =>
      __$VideosCopyWithImpl<_Videos>(this, _$identity);
}

abstract class _Videos implements Videos {
  const factory _Videos({@required @nullable List<VideoResult> results}) =
      _$_Videos;

  @override
  @nullable
  List<VideoResult> get results;
  @override
  _$VideosCopyWith<_Videos> get copyWith;
}
