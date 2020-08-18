// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'images.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ImagesTearOff {
  const _$ImagesTearOff();

// ignore: unused_element
  _Images call(
      {@required @nullable List<Backdrops> backdrops,
      @required @nullable List<Posters> posters}) {
    return _Images(
      backdrops: backdrops,
      posters: posters,
    );
  }
}

// ignore: unused_element
const $Images = _$ImagesTearOff();

mixin _$Images {
  @nullable
  List<Backdrops> get backdrops;
  @nullable
  List<Posters> get posters;

  $ImagesCopyWith<Images> get copyWith;
}

abstract class $ImagesCopyWith<$Res> {
  factory $ImagesCopyWith(Images value, $Res Function(Images) then) =
      _$ImagesCopyWithImpl<$Res>;
  $Res call(
      {@nullable List<Backdrops> backdrops, @nullable List<Posters> posters});
}

class _$ImagesCopyWithImpl<$Res> implements $ImagesCopyWith<$Res> {
  _$ImagesCopyWithImpl(this._value, this._then);

  final Images _value;
  // ignore: unused_field
  final $Res Function(Images) _then;

  @override
  $Res call({
    Object backdrops = freezed,
    Object posters = freezed,
  }) {
    return _then(_value.copyWith(
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops as List<Backdrops>,
      posters: posters == freezed ? _value.posters : posters as List<Posters>,
    ));
  }
}

abstract class _$ImagesCopyWith<$Res> implements $ImagesCopyWith<$Res> {
  factory _$ImagesCopyWith(_Images value, $Res Function(_Images) then) =
      __$ImagesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@nullable List<Backdrops> backdrops, @nullable List<Posters> posters});
}

class __$ImagesCopyWithImpl<$Res> extends _$ImagesCopyWithImpl<$Res>
    implements _$ImagesCopyWith<$Res> {
  __$ImagesCopyWithImpl(_Images _value, $Res Function(_Images) _then)
      : super(_value, (v) => _then(v as _Images));

  @override
  _Images get _value => super._value as _Images;

  @override
  $Res call({
    Object backdrops = freezed,
    Object posters = freezed,
  }) {
    return _then(_Images(
      backdrops: backdrops == freezed
          ? _value.backdrops
          : backdrops as List<Backdrops>,
      posters: posters == freezed ? _value.posters : posters as List<Posters>,
    ));
  }
}

class _$_Images implements _Images {
  const _$_Images(
      {@required @nullable this.backdrops, @required @nullable this.posters});

  @override
  @nullable
  final List<Backdrops> backdrops;
  @override
  @nullable
  final List<Posters> posters;

  @override
  String toString() {
    return 'Images(backdrops: $backdrops, posters: $posters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Images &&
            (identical(other.backdrops, backdrops) ||
                const DeepCollectionEquality()
                    .equals(other.backdrops, backdrops)) &&
            (identical(other.posters, posters) ||
                const DeepCollectionEquality().equals(other.posters, posters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(backdrops) ^
      const DeepCollectionEquality().hash(posters);

  @override
  _$ImagesCopyWith<_Images> get copyWith =>
      __$ImagesCopyWithImpl<_Images>(this, _$identity);
}

abstract class _Images implements Images {
  const factory _Images(
      {@required @nullable List<Backdrops> backdrops,
      @required @nullable List<Posters> posters}) = _$_Images;

  @override
  @nullable
  List<Backdrops> get backdrops;
  @override
  @nullable
  List<Posters> get posters;
  @override
  _$ImagesCopyWith<_Images> get copyWith;
}
