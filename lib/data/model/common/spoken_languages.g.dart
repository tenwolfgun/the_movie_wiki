// GENERATED CODE - DO NOT MODIFY BY HAND

part of spoken_languages;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SpokenLanguages> _$spokenLanguagesSerializer =
    new _$SpokenLanguagesSerializer();

class _$SpokenLanguagesSerializer
    implements StructuredSerializer<SpokenLanguages> {
  @override
  final Iterable<Type> types = const [SpokenLanguages, _$SpokenLanguages];
  @override
  final String wireName = 'SpokenLanguages';

  @override
  Iterable<Object> serialize(Serializers serializers, SpokenLanguages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.isoLanguage != null) {
      result
        ..add('iso_639_1')
        ..add(serializers.serialize(object.isoLanguage,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SpokenLanguages deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpokenLanguagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iso_639_1':
          result.isoLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SpokenLanguages extends SpokenLanguages {
  @override
  final String isoLanguage;
  @override
  final String name;

  factory _$SpokenLanguages([void Function(SpokenLanguagesBuilder) updates]) =>
      (new SpokenLanguagesBuilder()..update(updates)).build();

  _$SpokenLanguages._({this.isoLanguage, this.name}) : super._();

  @override
  SpokenLanguages rebuild(void Function(SpokenLanguagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpokenLanguagesBuilder toBuilder() =>
      new SpokenLanguagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpokenLanguages &&
        isoLanguage == other.isoLanguage &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, isoLanguage.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SpokenLanguages')
          ..add('isoLanguage', isoLanguage)
          ..add('name', name))
        .toString();
  }
}

class SpokenLanguagesBuilder
    implements Builder<SpokenLanguages, SpokenLanguagesBuilder> {
  _$SpokenLanguages _$v;

  String _isoLanguage;
  String get isoLanguage => _$this._isoLanguage;
  set isoLanguage(String isoLanguage) => _$this._isoLanguage = isoLanguage;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  SpokenLanguagesBuilder();

  SpokenLanguagesBuilder get _$this {
    if (_$v != null) {
      _isoLanguage = _$v.isoLanguage;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpokenLanguages other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SpokenLanguages;
  }

  @override
  void update(void Function(SpokenLanguagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SpokenLanguages build() {
    final _$result =
        _$v ?? new _$SpokenLanguages._(isoLanguage: isoLanguage, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
