// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_movies_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchMoviesEventInitiated extends SearchMoviesEventInitiated {
  @override
  final String searchQuery;
  @override
  final int page;

  factory _$SearchMoviesEventInitiated(
          [void Function(SearchMoviesEventInitiatedBuilder) updates]) =>
      (new SearchMoviesEventInitiatedBuilder()..update(updates)).build();

  _$SearchMoviesEventInitiated._({this.searchQuery, this.page}) : super._() {
    if (searchQuery == null) {
      throw new BuiltValueNullFieldError(
          'SearchMoviesEventInitiated', 'searchQuery');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('SearchMoviesEventInitiated', 'page');
    }
  }

  @override
  SearchMoviesEventInitiated rebuild(
          void Function(SearchMoviesEventInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchMoviesEventInitiatedBuilder toBuilder() =>
      new SearchMoviesEventInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchMoviesEventInitiated &&
        searchQuery == other.searchQuery &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, searchQuery.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchMoviesEventInitiated')
          ..add('searchQuery', searchQuery)
          ..add('page', page))
        .toString();
  }
}

class SearchMoviesEventInitiatedBuilder
    implements
        Builder<SearchMoviesEventInitiated, SearchMoviesEventInitiatedBuilder> {
  _$SearchMoviesEventInitiated _$v;

  String _searchQuery;
  String get searchQuery => _$this._searchQuery;
  set searchQuery(String searchQuery) => _$this._searchQuery = searchQuery;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  SearchMoviesEventInitiatedBuilder();

  SearchMoviesEventInitiatedBuilder get _$this {
    if (_$v != null) {
      _searchQuery = _$v.searchQuery;
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchMoviesEventInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchMoviesEventInitiated;
  }

  @override
  void update(void Function(SearchMoviesEventInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchMoviesEventInitiated build() {
    final _$result = _$v ??
        new _$SearchMoviesEventInitiated._(
            searchQuery: searchQuery, page: page);
    replace(_$result);
    return _$result;
  }
}

class _$SearchMoviesEventNextResult extends SearchMoviesEventNextResult {
  @override
  final String searchQuery;
  @override
  final int page;

  factory _$SearchMoviesEventNextResult(
          [void Function(SearchMoviesEventNextResultBuilder) updates]) =>
      (new SearchMoviesEventNextResultBuilder()..update(updates)).build();

  _$SearchMoviesEventNextResult._({this.searchQuery, this.page}) : super._() {
    if (searchQuery == null) {
      throw new BuiltValueNullFieldError(
          'SearchMoviesEventNextResult', 'searchQuery');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('SearchMoviesEventNextResult', 'page');
    }
  }

  @override
  SearchMoviesEventNextResult rebuild(
          void Function(SearchMoviesEventNextResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchMoviesEventNextResultBuilder toBuilder() =>
      new SearchMoviesEventNextResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchMoviesEventNextResult &&
        searchQuery == other.searchQuery &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, searchQuery.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchMoviesEventNextResult')
          ..add('searchQuery', searchQuery)
          ..add('page', page))
        .toString();
  }
}

class SearchMoviesEventNextResultBuilder
    implements
        Builder<SearchMoviesEventNextResult,
            SearchMoviesEventNextResultBuilder> {
  _$SearchMoviesEventNextResult _$v;

  String _searchQuery;
  String get searchQuery => _$this._searchQuery;
  set searchQuery(String searchQuery) => _$this._searchQuery = searchQuery;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  SearchMoviesEventNextResultBuilder();

  SearchMoviesEventNextResultBuilder get _$this {
    if (_$v != null) {
      _searchQuery = _$v.searchQuery;
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchMoviesEventNextResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchMoviesEventNextResult;
  }

  @override
  void update(void Function(SearchMoviesEventNextResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchMoviesEventNextResult build() {
    final _$result = _$v ??
        new _$SearchMoviesEventNextResult._(
            searchQuery: searchQuery, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
