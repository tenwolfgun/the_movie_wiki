// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'discover_movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DiscoverMovieEventTearOff {
  const _$DiscoverMovieEventTearOff();

// ignore: unused_element
  GetMovieData getMovieData(String type, int page) {
    return GetMovieData(
      type,
      page,
    );
  }

// ignore: unused_element
  GetMovieDataRetry getMovieDataRetry(String type, int page) {
    return GetMovieDataRetry(
      type,
      page,
    );
  }
}

// ignore: unused_element
const $DiscoverMovieEvent = _$DiscoverMovieEventTearOff();

mixin _$DiscoverMovieEvent {
  String get type;
  int get page;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getMovieData(String type, int page),
    @required Result getMovieDataRetry(String type, int page),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getMovieData(String type, int page),
    Result getMovieDataRetry(String type, int page),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getMovieData(GetMovieData value),
    @required Result getMovieDataRetry(GetMovieDataRetry value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getMovieData(GetMovieData value),
    Result getMovieDataRetry(GetMovieDataRetry value),
    @required Result orElse(),
  });

  $DiscoverMovieEventCopyWith<DiscoverMovieEvent> get copyWith;
}

abstract class $DiscoverMovieEventCopyWith<$Res> {
  factory $DiscoverMovieEventCopyWith(
          DiscoverMovieEvent value, $Res Function(DiscoverMovieEvent) then) =
      _$DiscoverMovieEventCopyWithImpl<$Res>;
  $Res call({String type, int page});
}

class _$DiscoverMovieEventCopyWithImpl<$Res>
    implements $DiscoverMovieEventCopyWith<$Res> {
  _$DiscoverMovieEventCopyWithImpl(this._value, this._then);

  final DiscoverMovieEvent _value;
  // ignore: unused_field
  final $Res Function(DiscoverMovieEvent) _then;

  @override
  $Res call({
    Object type = freezed,
    Object page = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed ? _value.type : type as String,
      page: page == freezed ? _value.page : page as int,
    ));
  }
}

abstract class $GetMovieDataCopyWith<$Res>
    implements $DiscoverMovieEventCopyWith<$Res> {
  factory $GetMovieDataCopyWith(
          GetMovieData value, $Res Function(GetMovieData) then) =
      _$GetMovieDataCopyWithImpl<$Res>;
  @override
  $Res call({String type, int page});
}

class _$GetMovieDataCopyWithImpl<$Res>
    extends _$DiscoverMovieEventCopyWithImpl<$Res>
    implements $GetMovieDataCopyWith<$Res> {
  _$GetMovieDataCopyWithImpl(
      GetMovieData _value, $Res Function(GetMovieData) _then)
      : super(_value, (v) => _then(v as GetMovieData));

  @override
  GetMovieData get _value => super._value as GetMovieData;

  @override
  $Res call({
    Object type = freezed,
    Object page = freezed,
  }) {
    return _then(GetMovieData(
      type == freezed ? _value.type : type as String,
      page == freezed ? _value.page : page as int,
    ));
  }
}

class _$GetMovieData implements GetMovieData {
  const _$GetMovieData(this.type, this.page)
      : assert(type != null),
        assert(page != null);

  @override
  final String type;
  @override
  final int page;

  @override
  String toString() {
    return 'DiscoverMovieEvent.getMovieData(type: $type, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMovieData &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(page);

  @override
  $GetMovieDataCopyWith<GetMovieData> get copyWith =>
      _$GetMovieDataCopyWithImpl<GetMovieData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getMovieData(String type, int page),
    @required Result getMovieDataRetry(String type, int page),
  }) {
    assert(getMovieData != null);
    assert(getMovieDataRetry != null);
    return getMovieData(type, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getMovieData(String type, int page),
    Result getMovieDataRetry(String type, int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMovieData != null) {
      return getMovieData(type, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getMovieData(GetMovieData value),
    @required Result getMovieDataRetry(GetMovieDataRetry value),
  }) {
    assert(getMovieData != null);
    assert(getMovieDataRetry != null);
    return getMovieData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getMovieData(GetMovieData value),
    Result getMovieDataRetry(GetMovieDataRetry value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMovieData != null) {
      return getMovieData(this);
    }
    return orElse();
  }
}

abstract class GetMovieData implements DiscoverMovieEvent {
  const factory GetMovieData(String type, int page) = _$GetMovieData;

  @override
  String get type;
  @override
  int get page;
  @override
  $GetMovieDataCopyWith<GetMovieData> get copyWith;
}

abstract class $GetMovieDataRetryCopyWith<$Res>
    implements $DiscoverMovieEventCopyWith<$Res> {
  factory $GetMovieDataRetryCopyWith(
          GetMovieDataRetry value, $Res Function(GetMovieDataRetry) then) =
      _$GetMovieDataRetryCopyWithImpl<$Res>;
  @override
  $Res call({String type, int page});
}

class _$GetMovieDataRetryCopyWithImpl<$Res>
    extends _$DiscoverMovieEventCopyWithImpl<$Res>
    implements $GetMovieDataRetryCopyWith<$Res> {
  _$GetMovieDataRetryCopyWithImpl(
      GetMovieDataRetry _value, $Res Function(GetMovieDataRetry) _then)
      : super(_value, (v) => _then(v as GetMovieDataRetry));

  @override
  GetMovieDataRetry get _value => super._value as GetMovieDataRetry;

  @override
  $Res call({
    Object type = freezed,
    Object page = freezed,
  }) {
    return _then(GetMovieDataRetry(
      type == freezed ? _value.type : type as String,
      page == freezed ? _value.page : page as int,
    ));
  }
}

class _$GetMovieDataRetry implements GetMovieDataRetry {
  const _$GetMovieDataRetry(this.type, this.page)
      : assert(type != null),
        assert(page != null);

  @override
  final String type;
  @override
  final int page;

  @override
  String toString() {
    return 'DiscoverMovieEvent.getMovieDataRetry(type: $type, page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetMovieDataRetry &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(page);

  @override
  $GetMovieDataRetryCopyWith<GetMovieDataRetry> get copyWith =>
      _$GetMovieDataRetryCopyWithImpl<GetMovieDataRetry>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getMovieData(String type, int page),
    @required Result getMovieDataRetry(String type, int page),
  }) {
    assert(getMovieData != null);
    assert(getMovieDataRetry != null);
    return getMovieDataRetry(type, page);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getMovieData(String type, int page),
    Result getMovieDataRetry(String type, int page),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMovieDataRetry != null) {
      return getMovieDataRetry(type, page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getMovieData(GetMovieData value),
    @required Result getMovieDataRetry(GetMovieDataRetry value),
  }) {
    assert(getMovieData != null);
    assert(getMovieDataRetry != null);
    return getMovieDataRetry(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getMovieData(GetMovieData value),
    Result getMovieDataRetry(GetMovieDataRetry value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getMovieDataRetry != null) {
      return getMovieDataRetry(this);
    }
    return orElse();
  }
}

abstract class GetMovieDataRetry implements DiscoverMovieEvent {
  const factory GetMovieDataRetry(String type, int page) = _$GetMovieDataRetry;

  @override
  String get type;
  @override
  int get page;
  @override
  $GetMovieDataRetryCopyWith<GetMovieDataRetry> get copyWith;
}

class _$DiscoverMovieStateTearOff {
  const _$DiscoverMovieStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }
}

// ignore: unused_element
const $DiscoverMovieState = _$DiscoverMovieStateTearOff();

mixin _$DiscoverMovieState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    @required Result orElse(),
  });
}

abstract class $DiscoverMovieStateCopyWith<$Res> {
  factory $DiscoverMovieStateCopyWith(
          DiscoverMovieState value, $Res Function(DiscoverMovieState) then) =
      _$DiscoverMovieStateCopyWithImpl<$Res>;
}

class _$DiscoverMovieStateCopyWithImpl<$Res>
    implements $DiscoverMovieStateCopyWith<$Res> {
  _$DiscoverMovieStateCopyWithImpl(this._value, this._then);

  final DiscoverMovieState _value;
  // ignore: unused_field
  final $Res Function(DiscoverMovieState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$DiscoverMovieStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'DiscoverMovieState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
  }) {
    assert(initial != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
  }) {
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DiscoverMovieState {
  const factory Initial() = _$Initial;
}
