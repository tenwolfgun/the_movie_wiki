// GENERATED CODE - DO NOT MODIFY BY HAND

part of genre_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenreResult> _$genreResultSerializer = new _$GenreResultSerializer();

class _$GenreResultSerializer implements StructuredSerializer<GenreResult> {
  @override
  final Iterable<Type> types = const [GenreResult, _$GenreResult];
  @override
  final String wireName = 'GenreResult';

  @override
  Iterable<Object> serialize(Serializers serializers, GenreResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Genre)])),
    ];

    return result;
  }

  @override
  GenreResult deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenreResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Genre)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$GenreResult extends GenreResult {
  @override
  final BuiltList<Genre> genres;

  factory _$GenreResult([void Function(GenreResultBuilder) updates]) =>
      (new GenreResultBuilder()..update(updates)).build();

  _$GenreResult._({this.genres}) : super._() {
    if (genres == null) {
      throw new BuiltValueNullFieldError('GenreResult', 'genres');
    }
  }

  @override
  GenreResult rebuild(void Function(GenreResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenreResultBuilder toBuilder() => new GenreResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenreResult && genres == other.genres;
  }

  @override
  int get hashCode {
    return $jf($jc(0, genres.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenreResult')..add('genres', genres))
        .toString();
  }
}

class GenreResultBuilder implements Builder<GenreResult, GenreResultBuilder> {
  _$GenreResult _$v;

  ListBuilder<Genre> _genres;
  ListBuilder<Genre> get genres => _$this._genres ??= new ListBuilder<Genre>();
  set genres(ListBuilder<Genre> genres) => _$this._genres = genres;

  GenreResultBuilder();

  GenreResultBuilder get _$this {
    if (_$v != null) {
      _genres = _$v.genres?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenreResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenreResult;
  }

  @override
  void update(void Function(GenreResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GenreResult build() {
    _$GenreResult _$result;
    try {
      _$result = _$v ?? new _$GenreResult._(genres: genres.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'GenreResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
