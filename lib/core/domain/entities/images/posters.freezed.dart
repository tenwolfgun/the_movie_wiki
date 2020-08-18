// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'posters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$PostersTearOff {
  const _$PostersTearOff();

// ignore: unused_element
  _Posters call(
      {@required @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) {
    return _Posters(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}

// ignore: unused_element
const $Posters = _$PostersTearOff();

mixin _$Posters {
  @nullable
  String get filePath;
  @nullable
  double get height;
  @nullable
  double get width;

  $PostersCopyWith<Posters> get copyWith;
}

abstract class $PostersCopyWith<$Res> {
  factory $PostersCopyWith(Posters value, $Res Function(Posters) then) =
      _$PostersCopyWithImpl<$Res>;
  $Res call(
      {@nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class _$PostersCopyWithImpl<$Res> implements $PostersCopyWith<$Res> {
  _$PostersCopyWithImpl(this._value, this._then);

  final Posters _value;
  // ignore: unused_field
  final $Res Function(Posters) _then;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_value.copyWith(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

abstract class _$PostersCopyWith<$Res> implements $PostersCopyWith<$Res> {
  factory _$PostersCopyWith(_Posters value, $Res Function(_Posters) then) =
      __$PostersCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class __$PostersCopyWithImpl<$Res> extends _$PostersCopyWithImpl<$Res>
    implements _$PostersCopyWith<$Res> {
  __$PostersCopyWithImpl(_Posters _value, $Res Function(_Posters) _then)
      : super(_value, (v) => _then(v as _Posters));

  @override
  _Posters get _value => super._value as _Posters;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_Posters(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

class _$_Posters implements _Posters {
  const _$_Posters(
      {@required @nullable this.filePath,
      @required @nullable this.height,
      @required @nullable this.width});

  @override
  @nullable
  final String filePath;
  @override
  @nullable
  final double height;
  @override
  @nullable
  final double width;

  @override
  String toString() {
    return 'Posters(filePath: $filePath, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Posters &&
            (identical(other.filePath, filePath) ||
                const DeepCollectionEquality()
                    .equals(other.filePath, filePath)) &&
            (identical(other.height, height) ||
                const DeepCollectionEquality().equals(other.height, height)) &&
            (identical(other.width, width) ||
                const DeepCollectionEquality().equals(other.width, width)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(filePath) ^
      const DeepCollectionEquality().hash(height) ^
      const DeepCollectionEquality().hash(width);

  @override
  _$PostersCopyWith<_Posters> get copyWith =>
      __$PostersCopyWithImpl<_Posters>(this, _$identity);
}

abstract class _Posters implements Posters {
  const factory _Posters(
      {@required @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) = _$_Posters;

  @override
  @nullable
  String get filePath;
  @override
  @nullable
  double get height;
  @override
  @nullable
  double get width;
  @override
  _$PostersCopyWith<_Posters> get copyWith;
}
