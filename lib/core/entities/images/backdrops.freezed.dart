// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'backdrops.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$BackdropsTearOff {
  const _$BackdropsTearOff();

// ignore: unused_element
  _Backdrops call(
      {@required @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) {
    return _Backdrops(
      filePath: filePath,
      height: height,
      width: width,
    );
  }
}

// ignore: unused_element
const $Backdrops = _$BackdropsTearOff();

mixin _$Backdrops {
  @nullable
  String get filePath;
  @nullable
  double get height;
  @nullable
  double get width;

  $BackdropsCopyWith<Backdrops> get copyWith;
}

abstract class $BackdropsCopyWith<$Res> {
  factory $BackdropsCopyWith(Backdrops value, $Res Function(Backdrops) then) =
      _$BackdropsCopyWithImpl<$Res>;
  $Res call(
      {@nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class _$BackdropsCopyWithImpl<$Res> implements $BackdropsCopyWith<$Res> {
  _$BackdropsCopyWithImpl(this._value, this._then);

  final Backdrops _value;
  // ignore: unused_field
  final $Res Function(Backdrops) _then;

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

abstract class _$BackdropsCopyWith<$Res> implements $BackdropsCopyWith<$Res> {
  factory _$BackdropsCopyWith(
          _Backdrops value, $Res Function(_Backdrops) then) =
      __$BackdropsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable String filePath,
      @nullable double height,
      @nullable double width});
}

class __$BackdropsCopyWithImpl<$Res> extends _$BackdropsCopyWithImpl<$Res>
    implements _$BackdropsCopyWith<$Res> {
  __$BackdropsCopyWithImpl(_Backdrops _value, $Res Function(_Backdrops) _then)
      : super(_value, (v) => _then(v as _Backdrops));

  @override
  _Backdrops get _value => super._value as _Backdrops;

  @override
  $Res call({
    Object filePath = freezed,
    Object height = freezed,
    Object width = freezed,
  }) {
    return _then(_Backdrops(
      filePath: filePath == freezed ? _value.filePath : filePath as String,
      height: height == freezed ? _value.height : height as double,
      width: width == freezed ? _value.width : width as double,
    ));
  }
}

class _$_Backdrops with DiagnosticableTreeMixin implements _Backdrops {
  const _$_Backdrops(
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
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Backdrops(filePath: $filePath, height: $height, width: $width)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Backdrops'))
      ..add(DiagnosticsProperty('filePath', filePath))
      ..add(DiagnosticsProperty('height', height))
      ..add(DiagnosticsProperty('width', width));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Backdrops &&
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
  _$BackdropsCopyWith<_Backdrops> get copyWith =>
      __$BackdropsCopyWithImpl<_Backdrops>(this, _$identity);
}

abstract class _Backdrops implements Backdrops {
  const factory _Backdrops(
      {@required @nullable String filePath,
      @required @nullable double height,
      @required @nullable double width}) = _$_Backdrops;

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
  _$BackdropsCopyWith<_Backdrops> get copyWith;
}
