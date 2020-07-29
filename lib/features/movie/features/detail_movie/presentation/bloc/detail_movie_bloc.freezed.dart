// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_movie_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DetailMovieEventTearOff {
  const _$DetailMovieEventTearOff();

// ignore: unused_element
  GetData getData({@required int id}) {
    return GetData(
      id: id,
    );
  }
}

// ignore: unused_element
const $DetailMovieEvent = _$DetailMovieEventTearOff();

mixin _$DetailMovieEvent {
  int get id;

  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(int id),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(int id),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    @required Result orElse(),
  });

  $DetailMovieEventCopyWith<DetailMovieEvent> get copyWith;
}

abstract class $DetailMovieEventCopyWith<$Res> {
  factory $DetailMovieEventCopyWith(
          DetailMovieEvent value, $Res Function(DetailMovieEvent) then) =
      _$DetailMovieEventCopyWithImpl<$Res>;
  $Res call({int id});
}

class _$DetailMovieEventCopyWithImpl<$Res>
    implements $DetailMovieEventCopyWith<$Res> {
  _$DetailMovieEventCopyWithImpl(this._value, this._then);

  final DetailMovieEvent _value;
  // ignore: unused_field
  final $Res Function(DetailMovieEvent) _then;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

abstract class $GetDataCopyWith<$Res>
    implements $DetailMovieEventCopyWith<$Res> {
  factory $GetDataCopyWith(GetData value, $Res Function(GetData) then) =
      _$GetDataCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

class _$GetDataCopyWithImpl<$Res> extends _$DetailMovieEventCopyWithImpl<$Res>
    implements $GetDataCopyWith<$Res> {
  _$GetDataCopyWithImpl(GetData _value, $Res Function(GetData) _then)
      : super(_value, (v) => _then(v as GetData));

  @override
  GetData get _value => super._value as GetData;

  @override
  $Res call({
    Object id = freezed,
  }) {
    return _then(GetData(
      id: id == freezed ? _value.id : id as int,
    ));
  }
}

class _$GetData implements GetData {
  const _$GetData({@required this.id}) : assert(id != null);

  @override
  final int id;

  @override
  String toString() {
    return 'DetailMovieEvent.getData(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is GetData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @override
  $GetDataCopyWith<GetData> get copyWith =>
      _$GetDataCopyWithImpl<GetData>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getData(int id),
  }) {
    assert(getData != null);
    return getData(id);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getData(int id),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getData(GetData value),
  }) {
    assert(getData != null);
    return getData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getData(GetData value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getData != null) {
      return getData(this);
    }
    return orElse();
  }
}

abstract class GetData implements DetailMovieEvent {
  const factory GetData({@required int id}) = _$GetData;

  @override
  int get id;
  @override
  $GetDataCopyWith<GetData> get copyWith;
}

class _$DetailMovieStateTearOff {
  const _$DetailMovieStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded({@required DetailMovie detailMovie}) {
    return Loaded(
      detailMovie: detailMovie,
    );
  }

// ignore: unused_element
  Error error(String errorMessage) {
    return Error(
      errorMessage,
    );
  }
}

// ignore: unused_element
const $DetailMovieState = _$DetailMovieStateTearOff();

mixin _$DetailMovieState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(DetailMovie detailMovie),
    @required Result error(String errorMessage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(DetailMovie detailMovie),
    Result error(String errorMessage),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $DetailMovieStateCopyWith<$Res> {
  factory $DetailMovieStateCopyWith(
          DetailMovieState value, $Res Function(DetailMovieState) then) =
      _$DetailMovieStateCopyWithImpl<$Res>;
}

class _$DetailMovieStateCopyWithImpl<$Res>
    implements $DetailMovieStateCopyWith<$Res> {
  _$DetailMovieStateCopyWithImpl(this._value, this._then);

  final DetailMovieState _value;
  // ignore: unused_field
  final $Res Function(DetailMovieState) _then;
}

abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

class _$InitialCopyWithImpl<$Res> extends _$DetailMovieStateCopyWithImpl<$Res>
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
    return 'DetailMovieState.initial()';
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
    @required Result loading(),
    @required Result loaded(DetailMovie detailMovie),
    @required Result error(String errorMessage),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(DetailMovie detailMovie),
    Result error(String errorMessage),
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
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements DetailMovieState {
  const factory Initial() = _$Initial;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$DetailMovieStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'DetailMovieState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(DetailMovie detailMovie),
    @required Result error(String errorMessage),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(DetailMovie detailMovie),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements DetailMovieState {
  const factory Loading() = _$Loading;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({DetailMovie detailMovie});

  $DetailMovieCopyWith<$Res> get detailMovie;
}

class _$LoadedCopyWithImpl<$Res> extends _$DetailMovieStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object detailMovie = freezed,
  }) {
    return _then(Loaded(
      detailMovie: detailMovie == freezed
          ? _value.detailMovie
          : detailMovie as DetailMovie,
    ));
  }

  @override
  $DetailMovieCopyWith<$Res> get detailMovie {
    if (_value.detailMovie == null) {
      return null;
    }
    return $DetailMovieCopyWith<$Res>(_value.detailMovie, (value) {
      return _then(_value.copyWith(detailMovie: value));
    });
  }
}

class _$Loaded implements Loaded {
  const _$Loaded({@required this.detailMovie}) : assert(detailMovie != null);

  @override
  final DetailMovie detailMovie;

  @override
  String toString() {
    return 'DetailMovieState.loaded(detailMovie: $detailMovie)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.detailMovie, detailMovie) ||
                const DeepCollectionEquality()
                    .equals(other.detailMovie, detailMovie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(detailMovie);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(DetailMovie detailMovie),
    @required Result error(String errorMessage),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(detailMovie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(DetailMovie detailMovie),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(detailMovie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements DetailMovieState {
  const factory Loaded({@required DetailMovie detailMovie}) = _$Loaded;

  DetailMovie get detailMovie;
  $LoadedCopyWith<Loaded> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

class _$ErrorCopyWithImpl<$Res> extends _$DetailMovieStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object errorMessage = freezed,
  }) {
    return _then(Error(
      errorMessage == freezed ? _value.errorMessage : errorMessage as String,
    ));
  }
}

class _$Error implements Error {
  _$Error(this.errorMessage) : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DetailMovieState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.errorMessage, errorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.errorMessage, errorMessage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(errorMessage);

  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(DetailMovie detailMovie),
    @required Result error(String errorMessage),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(DetailMovie detailMovie),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements DetailMovieState {
  factory Error(String errorMessage) = _$Error;

  String get errorMessage;
  $ErrorCopyWith<Error> get copyWith;
}
