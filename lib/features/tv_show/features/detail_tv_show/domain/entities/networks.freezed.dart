// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'networks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$NetworksTearOff {
  const _$NetworksTearOff();

// ignore: unused_element
  _Networks call(
      {@required @nullable String name, @required @nullable int id}) {
    return _Networks(
      name: name,
      id: id,
    );
  }
}

// ignore: unused_element
const $Networks = _$NetworksTearOff();

mixin _$Networks {
  @nullable
  String get name;
  @nullable
  int get id;

  $NetworksCopyWith<Networks> get copyWith;
}

abstract class $NetworksCopyWith<$Res> {
  factory $NetworksCopyWith(Networks value, $Res Function(Networks) then) =
      _$NetworksCopyWithImpl<$Res>;
  $Res call({@nullable String name, @nullable int id});
}

class _$NetworksCopyWithImpl<$Res> implements $NetworksCopyWith<$Res> {
  _$NetworksCopyWithImpl(this._value, this._then);

  final Networks _value;
  // ignore: unused_field
  final $Res Function(Networks) _then;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

abstract class _$NetworksCopyWith<$Res> implements $NetworksCopyWith<$Res> {
  factory _$NetworksCopyWith(_Networks value, $Res Function(_Networks) then) =
      __$NetworksCopyWithImpl<$Res>;
  @override
  $Res call({@nullable String name, @nullable int id});
}

class __$NetworksCopyWithImpl<$Res> extends _$NetworksCopyWithImpl<$Res>
    implements _$NetworksCopyWith<$Res> {
  __$NetworksCopyWithImpl(_Networks _value, $Res Function(_Networks) _then)
      : super(_value, (v) => _then(v as _Networks));

  @override
  _Networks get _value => super._value as _Networks;

  @override
  $Res call({
    Object name = freezed,
    Object id = freezed,
  }) {
    return _then(_Networks(
      name: name == freezed ? _value.name : name as String,
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

class _$_Networks implements _Networks {
  const _$_Networks(
      {@required @nullable this.name, @required @nullable this.id});

  @override
  @nullable
  final String name;
  @override
  @nullable
  final int id;

  @override
  String toString() {
    return 'Networks(name: $name, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Networks &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$NetworksCopyWith<_Networks> get copyWith =>
      __$NetworksCopyWithImpl<_Networks>(this, _$identity);
}

abstract class _Networks implements Networks {
  const factory _Networks(
      {@required @nullable String name,
      @required @nullable int id}) = _$_Networks;

  @override
  @nullable
  String get name;
  @override
  @nullable
  int get id;
  @override
  _$NetworksCopyWith<_Networks> get copyWith;
}
