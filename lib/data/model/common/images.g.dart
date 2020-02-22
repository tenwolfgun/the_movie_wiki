// GENERATED CODE - DO NOT MODIFY BY HAND

part of images;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Images> _$imagesSerializer = new _$ImagesSerializer();

class _$ImagesSerializer implements StructuredSerializer<Images> {
  @override
  final Iterable<Type> types = const [Images, _$Images];
  @override
  final String wireName = 'Images';

  @override
  Iterable<Object> serialize(Serializers serializers, Images object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.backdrops != null) {
      result
        ..add('backdrops')
        ..add(serializers.serialize(object.backdrops,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Backdrops)])));
    }
    if (object.posters != null) {
      result
        ..add('posters')
        ..add(serializers.serialize(object.posters,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Posters)])));
    }
    return result;
  }

  @override
  Images deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'backdrops':
          result.backdrops.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Backdrops)]))
              as BuiltList<dynamic>);
          break;
        case 'posters':
          result.posters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Posters)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$Images extends Images {
  @override
  final BuiltList<Backdrops> backdrops;
  @override
  final BuiltList<Posters> posters;

  factory _$Images([void Function(ImagesBuilder) updates]) =>
      (new ImagesBuilder()..update(updates)).build();

  _$Images._({this.backdrops, this.posters}) : super._();

  @override
  Images rebuild(void Function(ImagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagesBuilder toBuilder() => new ImagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Images &&
        backdrops == other.backdrops &&
        posters == other.posters;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, backdrops.hashCode), posters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Images')
          ..add('backdrops', backdrops)
          ..add('posters', posters))
        .toString();
  }
}

class ImagesBuilder implements Builder<Images, ImagesBuilder> {
  _$Images _$v;

  ListBuilder<Backdrops> _backdrops;
  ListBuilder<Backdrops> get backdrops =>
      _$this._backdrops ??= new ListBuilder<Backdrops>();
  set backdrops(ListBuilder<Backdrops> backdrops) =>
      _$this._backdrops = backdrops;

  ListBuilder<Posters> _posters;
  ListBuilder<Posters> get posters =>
      _$this._posters ??= new ListBuilder<Posters>();
  set posters(ListBuilder<Posters> posters) => _$this._posters = posters;

  ImagesBuilder();

  ImagesBuilder get _$this {
    if (_$v != null) {
      _backdrops = _$v.backdrops?.toBuilder();
      _posters = _$v.posters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Images other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Images;
  }

  @override
  void update(void Function(ImagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Images build() {
    _$Images _$result;
    try {
      _$result = _$v ??
          new _$Images._(
              backdrops: _backdrops?.build(), posters: _posters?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'backdrops';
        _backdrops?.build();
        _$failedField = 'posters';
        _posters?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Images', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
