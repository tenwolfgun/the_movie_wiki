// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_tv_show_event;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchTvShowEventInitiated extends SearchTvShowEventInitiated {
  @override
  final String searchQuery;
  @override
  final int page;

  factory _$SearchTvShowEventInitiated(
          [void Function(SearchTvShowEventInitiatedBuilder) updates]) =>
      (new SearchTvShowEventInitiatedBuilder()..update(updates)).build();

  _$SearchTvShowEventInitiated._({this.searchQuery, this.page}) : super._() {
    if (searchQuery == null) {
      throw new BuiltValueNullFieldError(
          'SearchTvShowEventInitiated', 'searchQuery');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('SearchTvShowEventInitiated', 'page');
    }
  }

  @override
  SearchTvShowEventInitiated rebuild(
          void Function(SearchTvShowEventInitiatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchTvShowEventInitiatedBuilder toBuilder() =>
      new SearchTvShowEventInitiatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchTvShowEventInitiated &&
        searchQuery == other.searchQuery &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, searchQuery.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchTvShowEventInitiated')
          ..add('searchQuery', searchQuery)
          ..add('page', page))
        .toString();
  }
}

class SearchTvShowEventInitiatedBuilder
    implements
        Builder<SearchTvShowEventInitiated, SearchTvShowEventInitiatedBuilder> {
  _$SearchTvShowEventInitiated _$v;

  String _searchQuery;
  String get searchQuery => _$this._searchQuery;
  set searchQuery(String searchQuery) => _$this._searchQuery = searchQuery;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  SearchTvShowEventInitiatedBuilder();

  SearchTvShowEventInitiatedBuilder get _$this {
    if (_$v != null) {
      _searchQuery = _$v.searchQuery;
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchTvShowEventInitiated other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchTvShowEventInitiated;
  }

  @override
  void update(void Function(SearchTvShowEventInitiatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchTvShowEventInitiated build() {
    final _$result = _$v ??
        new _$SearchTvShowEventInitiated._(
            searchQuery: searchQuery, page: page);
    replace(_$result);
    return _$result;
  }
}

class _$SearchTvShowEventNextResult extends SearchTvShowEventNextResult {
  @override
  final String searchQuery;
  @override
  final int page;

  factory _$SearchTvShowEventNextResult(
          [void Function(SearchTvShowEventNextResultBuilder) updates]) =>
      (new SearchTvShowEventNextResultBuilder()..update(updates)).build();

  _$SearchTvShowEventNextResult._({this.searchQuery, this.page}) : super._() {
    if (searchQuery == null) {
      throw new BuiltValueNullFieldError(
          'SearchTvShowEventNextResult', 'searchQuery');
    }
    if (page == null) {
      throw new BuiltValueNullFieldError('SearchTvShowEventNextResult', 'page');
    }
  }

  @override
  SearchTvShowEventNextResult rebuild(
          void Function(SearchTvShowEventNextResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchTvShowEventNextResultBuilder toBuilder() =>
      new SearchTvShowEventNextResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchTvShowEventNextResult &&
        searchQuery == other.searchQuery &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, searchQuery.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchTvShowEventNextResult')
          ..add('searchQuery', searchQuery)
          ..add('page', page))
        .toString();
  }
}

class SearchTvShowEventNextResultBuilder
    implements
        Builder<SearchTvShowEventNextResult,
            SearchTvShowEventNextResultBuilder> {
  _$SearchTvShowEventNextResult _$v;

  String _searchQuery;
  String get searchQuery => _$this._searchQuery;
  set searchQuery(String searchQuery) => _$this._searchQuery = searchQuery;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  SearchTvShowEventNextResultBuilder();

  SearchTvShowEventNextResultBuilder get _$this {
    if (_$v != null) {
      _searchQuery = _$v.searchQuery;
      _page = _$v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchTvShowEventNextResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchTvShowEventNextResult;
  }

  @override
  void update(void Function(SearchTvShowEventNextResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchTvShowEventNextResult build() {
    final _$result = _$v ??
        new _$SearchTvShowEventNextResult._(
            searchQuery: searchQuery, page: page);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
