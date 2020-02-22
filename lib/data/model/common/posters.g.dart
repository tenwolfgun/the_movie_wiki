// GENERATED CODE - DO NOT MODIFY BY HAND

part of posters;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Posters> _$postersSerializer = new _$PostersSerializer();

class _$PostersSerializer implements StructuredSerializer<Posters> {
  @override
  final Iterable<Type> types = const [Posters, _$Posters];
  @override
  final String wireName = 'Posters';

  @override
  Iterable<Object> serialize(Serializers serializers, Posters object,
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
  Posters deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostersBuilder();

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

class _$Posters extends Posters {
  @override
  final String filePath;
  @override
  final double height;
  @override
  final double width;

  factory _$Posters([void Function(PostersBuilder) updates]) =>
      (new PostersBuilder()..update(updates)).build();

  _$Posters._({this.filePath, this.height, this.width}) : super._();

  @override
  Posters rebuild(void Function(PostersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostersBuilder toBuilder() => new PostersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Posters &&
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
    return (newBuiltValueToStringHelper('Posters')
          ..add('filePath', filePath)
          ..add('height', height)
          ..add('width', width))
        .toString();
  }
}

class PostersBuilder implements Builder<Posters, PostersBuilder> {
  _$Posters _$v;

  String _filePath;
  String get filePath => _$this._filePath;
  set filePath(String filePath) => _$this._filePath = filePath;

  double _height;
  double get height => _$this._height;
  set height(double height) => _$this._height = height;

  double _width;
  double get width => _$this._width;
  set width(double width) => _$this._width = width;

  PostersBuilder();

  PostersBuilder get _$this {
    if (_$v != null) {
      _filePath = _$v.filePath;
      _height = _$v.height;
      _width = _$v.width;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Posters other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Posters;
  }

  @override
  void update(void Function(PostersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Posters build() {
    final _$result = _$v ??
        new _$Posters._(filePath: filePath, height: height, width: width);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
