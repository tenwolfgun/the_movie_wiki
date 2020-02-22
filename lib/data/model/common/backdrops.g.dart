// GENERATED CODE - DO NOT MODIFY BY HAND

part of backdrops;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Backdrops> _$backdropsSerializer = new _$BackdropsSerializer();

class _$BackdropsSerializer implements StructuredSerializer<Backdrops> {
  @override
  final Iterable<Type> types = const [Backdrops, _$Backdrops];
  @override
  final String wireName = 'Backdrops';

  @override
  Iterable<Object> serialize(Serializers serializers, Backdrops object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.filePath != null) {
      result
        ..add('file_path')
        ..add(serializers.serialize(object.filePath,
            specifiedType: const FullType(String)));
    }
    if (object.height != null) {
      result
        ..add('height')
        ..add(serializers.serialize(object.height,
            specifiedType: const FullType(double)));
    }
    if (object.width != null) {
      result
        ..add('width')
        ..add(serializers.serialize(object.width,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  Backdrops deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BackdropsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'file_path':
          result.filePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$Backdrops extends Backdrops {
  @override
  final String filePath;
  @override
  final double height;
  @override
  final double width;

  factory _$Backdrops([void Function(BackdropsBuilder) updates]) =>
      (new BackdropsBuilder()..update(updates)).build();

  _$Backdrops._({this.filePath, this.height, this.width}) : super._();

  @override
  Backdrops rebuild(void Function(BackdropsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BackdropsBuilder toBuilder() => new BackdropsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Backdrops &&
        filePath == other.filePath &&
        height == other.height &&
        width == other.width;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, filePath.hashCode), height.hashCode), width.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Backdrops')
          ..add('filePath', filePath)
          ..add('height', height)
          ..add('width', width))
        .toString();
  }
}

class BackdropsBuilder implements Builder<Backdrops, BackdropsBuilder> {
  _$Backdrops _$v;

  String _filePath;
  String get filePath => _$this._filePath;
  set filePath(String filePath) => _$this._filePath = filePath;

  double _height;
  double get height => _$this._height;
  set height(double height) => _$this._height = height;

  double _width;
  double get width => _$this._width;
  set width(double width) => _$this._width = width;

  BackdropsBuilder();

  BackdropsBuilder get _$this {
    if (_$v != null) {
      _filePath = _$v.filePath;
      _height = _$v.height;
      _width = _$v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Backdrops other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Backdrops;
  }

  @override
  void update(void Function(BackdropsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Backdrops build() {
    final _$result = _$v ??
        new _$Backdrops._(filePath: filePath, height: height, width: width);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
