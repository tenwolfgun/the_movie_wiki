// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'detail_tv_show_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$DetailTvShowEventTearOff {
  const _$DetailTvShowEventTearOff();

// ignore: unused_element
  GetData getData({@required int id}) {
    return GetData(
      id: id,
    );
  }
}

// ignore: unused_element
const $DetailTvShowEvent = _$DetailTvShowEventTearOff();

mixin _$DetailTvShowEvent {
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

  $DetailTvShowEventCopyWith<DetailTvShowEvent> get copyWith;
}

abstract class $DetailTvShowEventCopyWith<$Res> {
  factory $DetailTvShowEventCopyWith(
          DetailTvShowEvent value, $Res Function(DetailTvShowEvent) then) =
      _$DetailTvShowEventCopyWithImpl<$Res>;
  $Res call({int id});
}

class _$DetailTvShowEventCopyWithImpl<$Res>
    implements $DetailTvShowEventCopyWith<$Res> {
  _$DetailTvShowEventCopyWithImpl(this._value, this._then);

  final DetailTvShowEvent _value;
  // ignore: unused_field
  final $Res Function(DetailTvShowEvent) _then;

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
    implements $DetailTvShowEventCopyWith<$Res> {
  factory $GetDataCopyWith(GetData value, $Res Function(GetData) then) =
      _$GetDataCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

class _$GetDataCopyWithImpl<$Res> extends _$DetailTvShowEventCopyWithImpl<$Res>
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
    return 'DetailTvShowEvent.getData(id: $id)';
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

abstract class GetData implements DetailTvShowEvent {
  const factory GetData({@required int id}) = _$GetData;

  @override
  int get id;
  @override
  $GetDataCopyWith<GetData> get copyWith;
}

class _$DetailTvShowStateTearOff {
  const _$DetailTvShowStateTearOff();

// ignore: unused_element
  Inital initial() {
    return const Inital();
  }

// ignore: unused_element
  Loading loading() {
    return const Loading();
  }

// ignore: unused_element
  Loaded loaded({@required DetailTvShow detailTvShow}) {
    return Loaded(
      detailTvShow: detailTvShow,
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
const $DetailTvShowState = _$DetailTvShowStateTearOff();

mixin _$DetailTvShowState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(DetailTvShow detailTvShow),
    @required Result error(String errorMessage),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(DetailTvShow detailTvShow),
    Result error(String errorMessage),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Inital value),
    @required Result loading(Loading value),
    @required Result loaded(Loaded value),
    @required Result error(Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Inital value),
    Result loading(Loading value),
    Result loaded(Loaded value),
    Result error(Error value),
    @required Result orElse(),
  });
}

abstract class $DetailTvShowStateCopyWith<$Res> {
  factory $DetailTvShowStateCopyWith(
          DetailTvShowState value, $Res Function(DetailTvShowState) then) =
      _$DetailTvShowStateCopyWithImpl<$Res>;
}

class _$DetailTvShowStateCopyWithImpl<$Res>
    implements $DetailTvShowStateCopyWith<$Res> {
  _$DetailTvShowStateCopyWithImpl(this._value, this._then);

  final DetailTvShowState _value;
  // ignore: unused_field
  final $Res Function(DetailTvShowState) _then;
}

abstract class $InitalCopyWith<$Res> {
  factory $InitalCopyWith(Inital value, $Res Function(Inital) then) =
      _$InitalCopyWithImpl<$Res>;
}

class _$InitalCopyWithImpl<$Res> extends _$DetailTvShowStateCopyWithImpl<$Res>
    implements $InitalCopyWith<$Res> {
  _$InitalCopyWithImpl(Inital _value, $Res Function(Inital) _then)
      : super(_value, (v) => _then(v as Inital));

  @override
  Inital get _value => super._value as Inital;
}

class _$Inital implements Inital {
  const _$Inital();

  @override
  String toString() {
    return 'DetailTvShowState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Inital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(DetailTvShow detailTvShow),
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
    Result loaded(DetailTvShow detailTvShow),
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
    @required Result initial(Inital value),
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
    Result initial(Inital value),
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

abstract class Inital implements DetailTvShowState {
  const factory Inital() = _$Inital;
}

abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

class _$LoadingCopyWithImpl<$Res> extends _$DetailTvShowStateCopyWithImpl<$Res>
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
    return 'DetailTvShowState.loading()';
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
    @required Result loaded(DetailTvShow detailTvShow),
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
    Result loaded(DetailTvShow detailTvShow),
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
    @required Result initial(Inital value),
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
    Result initial(Inital value),
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

abstract class Loading implements DetailTvShowState {
  const factory Loading() = _$Loading;
}

abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({DetailTvShow detailTvShow});

  $DetailTvShowCopyWith<$Res> get detailTvShow;
}

class _$LoadedCopyWithImpl<$Res> extends _$DetailTvShowStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object detailTvShow = freezed,
  }) {
    return _then(Loaded(
      detailTvShow: detailTvShow == freezed
          ? _value.detailTvShow
          : detailTvShow as DetailTvShow,
    ));
  }

  @override
  $DetailTvShowCopyWith<$Res> get detailTvShow {
    if (_value.detailTvShow == null) {
      return null;
    }
    return $DetailTvShowCopyWith<$Res>(_value.detailTvShow, (value) {
      return _then(_value.copyWith(detailTvShow: value));
    });
  }
}

class _$Loaded implements Loaded {
  const _$Loaded({@required this.detailTvShow}) : assert(detailTvShow != null);

  @override
  final DetailTvShow detailTvShow;

  @override
  String toString() {
    return 'DetailTvShowState.loaded(detailTvShow: $detailTvShow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.detailTvShow, detailTvShow) ||
                const DeepCollectionEquality()
                    .equals(other.detailTvShow, detailTvShow)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(detailTvShow);

  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(DetailTvShow detailTvShow),
    @required Result error(String errorMessage),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(detailTvShow);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(DetailTvShow detailTvShow),
    Result error(String errorMessage),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(detailTvShow);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Inital value),
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
    Result initial(Inital value),
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

abstract class Loaded implements DetailTvShowState {
  const factory Loaded({@required DetailTvShow detailTvShow}) = _$Loaded;

  DetailTvShow get detailTvShow;
  $LoadedCopyWith<Loaded> get copyWith;
}

abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({String errorMessage});
}

class _$ErrorCopyWithImpl<$Res> extends _$DetailTvShowStateCopyWithImpl<$Res>
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
  const _$Error(this.errorMessage) : assert(errorMessage != null);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'DetailTvShowState.error(errorMessage: $errorMessage)';
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
    @required Result loaded(DetailTvShow detailTvShow),
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
    Result loaded(DetailTvShow detailTvShow),
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
    @required Result initial(Inital value),
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
    Result initial(Inital value),
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

abstract class Error implements DetailTvShowState {
  const factory Error(String errorMessage) = _$Error;

  String get errorMessage;
  $ErrorCopyWith<Error> get copyWith;
}
