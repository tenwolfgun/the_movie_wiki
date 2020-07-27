// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'credits.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreditsTearOff {
  const _$CreditsTearOff();

// ignore: unused_element
  _Credits call({@required @nullable List<Cast> cast}) {
    return _Credits(
      cast: cast,
    );
  }
}

// ignore: unused_element
const $Credits = _$CreditsTearOff();

mixin _$Credits {
  @nullable
  List<Cast> get cast;

  $CreditsCopyWith<Credits> get copyWith;
}

abstract class $CreditsCopyWith<$Res> {
  factory $CreditsCopyWith(Credits value, $Res Function(Credits) then) =
      _$CreditsCopyWithImpl<$Res>;
  $Res call({@nullable List<Cast> cast});
}

class _$CreditsCopyWithImpl<$Res> implements $CreditsCopyWith<$Res> {
  _$CreditsCopyWithImpl(this._value, this._then);

  final Credits _value;
  // ignore: unused_field
  final $Res Function(Credits) _then;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_value.copyWith(
      cast: cast == freezed ? _value.cast : cast as List<Cast>,
    ));
  }
}

abstract class _$CreditsCopyWith<$Res> implements $CreditsCopyWith<$Res> {
  factory _$CreditsCopyWith(_Credits value, $Res Function(_Credits) then) =
      __$CreditsCopyWithImpl<$Res>;
  @override
  $Res call({@nullable List<Cast> cast});
}

class __$CreditsCopyWithImpl<$Res> extends _$CreditsCopyWithImpl<$Res>
    implements _$CreditsCopyWith<$Res> {
  __$CreditsCopyWithImpl(_Credits _value, $Res Function(_Credits) _then)
      : super(_value, (v) => _then(v as _Credits));

  @override
  _Credits get _value => super._value as _Credits;

  @override
  $Res call({
    Object cast = freezed,
  }) {
    return _then(_Credits(
      cast: cast == freezed ? _value.cast : cast as List<Cast>,
    ));
  }
}

class _$_Credits implements _Credits {
  const _$_Credits({@required @nullable this.cast});

  @override
  @nullable
  final List<Cast> cast;

  @override
  String toString() {
    return 'Credits(cast: $cast)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Credits &&
            (identical(other.cast, cast) ||
                const DeepCollectionEquality().equals(other.cast, cast)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(cast);

  @override
  _$CreditsCopyWith<_Credits> get copyWith =>
      __$CreditsCopyWithImpl<_Credits>(this, _$identity);
}

abstract class _Credits implements Credits {
  const factory _Credits({@required @nullable List<Cast> cast}) = _$_Credits;

  @override
  @nullable
  List<Cast> get cast;
  @override
  _$CreditsCopyWith<_Credits> get copyWith;
}
