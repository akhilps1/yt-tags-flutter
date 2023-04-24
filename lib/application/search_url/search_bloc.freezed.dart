// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchEvent {
  Object get searchUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchUrl searchUrl) urlChanged,
    required TResult Function(String searchUrl) searchButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchUrl searchUrl)? urlChanged,
    TResult? Function(String searchUrl)? searchButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchUrl searchUrl)? urlChanged,
    TResult Function(String searchUrl)? searchButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UrlChangEvent value) urlChanged,
    required TResult Function(SearchButtonClickEvent value) searchButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UrlChangEvent value)? urlChanged,
    TResult? Function(SearchButtonClickEvent value)? searchButtonClicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UrlChangEvent value)? urlChanged,
    TResult Function(SearchButtonClickEvent value)? searchButtonClicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchEventCopyWith<$Res> {
  factory $SearchEventCopyWith(
          SearchEvent value, $Res Function(SearchEvent) then) =
      _$SearchEventCopyWithImpl<$Res, SearchEvent>;
}

/// @nodoc
class _$SearchEventCopyWithImpl<$Res, $Val extends SearchEvent>
    implements $SearchEventCopyWith<$Res> {
  _$SearchEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$UrlChangEventCopyWith<$Res> {
  factory _$$UrlChangEventCopyWith(
          _$UrlChangEvent value, $Res Function(_$UrlChangEvent) then) =
      __$$UrlChangEventCopyWithImpl<$Res>;
  @useResult
  $Res call({SearchUrl searchUrl});
}

/// @nodoc
class __$$UrlChangEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$UrlChangEvent>
    implements _$$UrlChangEventCopyWith<$Res> {
  __$$UrlChangEventCopyWithImpl(
      _$UrlChangEvent _value, $Res Function(_$UrlChangEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchUrl = null,
  }) {
    return _then(_$UrlChangEvent(
      searchUrl: null == searchUrl
          ? _value.searchUrl
          : searchUrl // ignore: cast_nullable_to_non_nullable
              as SearchUrl,
    ));
  }
}

/// @nodoc

class _$UrlChangEvent implements UrlChangEvent {
  const _$UrlChangEvent({required this.searchUrl});

  @override
  final SearchUrl searchUrl;

  @override
  String toString() {
    return 'SearchEvent.urlChanged(searchUrl: $searchUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UrlChangEvent &&
            (identical(other.searchUrl, searchUrl) ||
                other.searchUrl == searchUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UrlChangEventCopyWith<_$UrlChangEvent> get copyWith =>
      __$$UrlChangEventCopyWithImpl<_$UrlChangEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchUrl searchUrl) urlChanged,
    required TResult Function(String searchUrl) searchButtonClicked,
  }) {
    return urlChanged(searchUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchUrl searchUrl)? urlChanged,
    TResult? Function(String searchUrl)? searchButtonClicked,
  }) {
    return urlChanged?.call(searchUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchUrl searchUrl)? urlChanged,
    TResult Function(String searchUrl)? searchButtonClicked,
    required TResult orElse(),
  }) {
    if (urlChanged != null) {
      return urlChanged(searchUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UrlChangEvent value) urlChanged,
    required TResult Function(SearchButtonClickEvent value) searchButtonClicked,
  }) {
    return urlChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UrlChangEvent value)? urlChanged,
    TResult? Function(SearchButtonClickEvent value)? searchButtonClicked,
  }) {
    return urlChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UrlChangEvent value)? urlChanged,
    TResult Function(SearchButtonClickEvent value)? searchButtonClicked,
    required TResult orElse(),
  }) {
    if (urlChanged != null) {
      return urlChanged(this);
    }
    return orElse();
  }
}

abstract class UrlChangEvent implements SearchEvent {
  const factory UrlChangEvent({required final SearchUrl searchUrl}) =
      _$UrlChangEvent;

  @override
  SearchUrl get searchUrl;
  @JsonKey(ignore: true)
  _$$UrlChangEventCopyWith<_$UrlChangEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchButtonClickEventCopyWith<$Res> {
  factory _$$SearchButtonClickEventCopyWith(_$SearchButtonClickEvent value,
          $Res Function(_$SearchButtonClickEvent) then) =
      __$$SearchButtonClickEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String searchUrl});
}

/// @nodoc
class __$$SearchButtonClickEventCopyWithImpl<$Res>
    extends _$SearchEventCopyWithImpl<$Res, _$SearchButtonClickEvent>
    implements _$$SearchButtonClickEventCopyWith<$Res> {
  __$$SearchButtonClickEventCopyWithImpl(_$SearchButtonClickEvent _value,
      $Res Function(_$SearchButtonClickEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchUrl = null,
  }) {
    return _then(_$SearchButtonClickEvent(
      searchUrl: null == searchUrl
          ? _value.searchUrl
          : searchUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchButtonClickEvent implements SearchButtonClickEvent {
  const _$SearchButtonClickEvent({required this.searchUrl});

  @override
  final String searchUrl;

  @override
  String toString() {
    return 'SearchEvent.searchButtonClicked(searchUrl: $searchUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchButtonClickEvent &&
            (identical(other.searchUrl, searchUrl) ||
                other.searchUrl == searchUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchButtonClickEventCopyWith<_$SearchButtonClickEvent> get copyWith =>
      __$$SearchButtonClickEventCopyWithImpl<_$SearchButtonClickEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SearchUrl searchUrl) urlChanged,
    required TResult Function(String searchUrl) searchButtonClicked,
  }) {
    return searchButtonClicked(searchUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(SearchUrl searchUrl)? urlChanged,
    TResult? Function(String searchUrl)? searchButtonClicked,
  }) {
    return searchButtonClicked?.call(searchUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SearchUrl searchUrl)? urlChanged,
    TResult Function(String searchUrl)? searchButtonClicked,
    required TResult orElse(),
  }) {
    if (searchButtonClicked != null) {
      return searchButtonClicked(searchUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UrlChangEvent value) urlChanged,
    required TResult Function(SearchButtonClickEvent value) searchButtonClicked,
  }) {
    return searchButtonClicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UrlChangEvent value)? urlChanged,
    TResult? Function(SearchButtonClickEvent value)? searchButtonClicked,
  }) {
    return searchButtonClicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UrlChangEvent value)? urlChanged,
    TResult Function(SearchButtonClickEvent value)? searchButtonClicked,
    required TResult orElse(),
  }) {
    if (searchButtonClicked != null) {
      return searchButtonClicked(this);
    }
    return orElse();
  }
}

abstract class SearchButtonClickEvent implements SearchEvent {
  const factory SearchButtonClickEvent({required final String searchUrl}) =
      _$SearchButtonClickEvent;

  @override
  String get searchUrl;
  @JsonKey(ignore: true)
  _$$SearchButtonClickEventCopyWith<_$SearchButtonClickEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<ValueFailure, Unit>> get isValidUrl =>
      throw _privateConstructorUsedError;
  SearchResponse get items => throw _privateConstructorUsedError;
  SearchUrl get url => throw _privateConstructorUsedError;
  Option<Either<SearchFailure, SearchResponse>> get successOrFailure =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchStateCopyWith<SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchStateCopyWith<$Res> {
  factory $SearchStateCopyWith(
          SearchState value, $Res Function(SearchState) then) =
      _$SearchStateCopyWithImpl<$Res, SearchState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ValueFailure, Unit>> isValidUrl,
      SearchResponse items,
      SearchUrl url,
      Option<Either<SearchFailure, SearchResponse>> successOrFailure});
}

/// @nodoc
class _$SearchStateCopyWithImpl<$Res, $Val extends SearchState>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isValidUrl = null,
    Object? items = null,
    Object? url = null,
    Object? successOrFailure = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidUrl: null == isValidUrl
          ? _value.isValidUrl
          : isValidUrl // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, Unit>>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as SearchResponse,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as SearchUrl,
      successOrFailure: null == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<SearchFailure, SearchResponse>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SearchStateCopyWith<$Res>
    implements $SearchStateCopyWith<$Res> {
  factory _$$_SearchStateCopyWith(
          _$_SearchState value, $Res Function(_$_SearchState) then) =
      __$$_SearchStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<ValueFailure, Unit>> isValidUrl,
      SearchResponse items,
      SearchUrl url,
      Option<Either<SearchFailure, SearchResponse>> successOrFailure});
}

/// @nodoc
class __$$_SearchStateCopyWithImpl<$Res>
    extends _$SearchStateCopyWithImpl<$Res, _$_SearchState>
    implements _$$_SearchStateCopyWith<$Res> {
  __$$_SearchStateCopyWithImpl(
      _$_SearchState _value, $Res Function(_$_SearchState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? isValidUrl = null,
    Object? items = null,
    Object? url = null,
    Object? successOrFailure = null,
  }) {
    return _then(_$_SearchState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isValidUrl: null == isValidUrl
          ? _value.isValidUrl
          : isValidUrl // ignore: cast_nullable_to_non_nullable
              as Option<Either<ValueFailure, Unit>>,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as SearchResponse,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as SearchUrl,
      successOrFailure: null == successOrFailure
          ? _value.successOrFailure
          : successOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<SearchFailure, SearchResponse>>,
    ));
  }
}

/// @nodoc

class _$_SearchState implements _SearchState {
  const _$_SearchState(
      {required this.isLoading,
      required this.isValidUrl,
      required this.items,
      required this.url,
      required this.successOrFailure});

  @override
  final bool isLoading;
  @override
  final Option<Either<ValueFailure, Unit>> isValidUrl;
  @override
  final SearchResponse items;
  @override
  final SearchUrl url;
  @override
  final Option<Either<SearchFailure, SearchResponse>> successOrFailure;

  @override
  String toString() {
    return 'SearchState(isLoading: $isLoading, isValidUrl: $isValidUrl, items: $items, url: $url, successOrFailure: $successOrFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.isValidUrl, isValidUrl) ||
                other.isValidUrl == isValidUrl) &&
            (identical(other.items, items) || other.items == items) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.successOrFailure, successOrFailure) ||
                other.successOrFailure == successOrFailure));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLoading, isValidUrl, items, url, successOrFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      __$$_SearchStateCopyWithImpl<_$_SearchState>(this, _$identity);
}

abstract class _SearchState implements SearchState {
  const factory _SearchState(
      {required final bool isLoading,
      required final Option<Either<ValueFailure, Unit>> isValidUrl,
      required final SearchResponse items,
      required final SearchUrl url,
      required final Option<Either<SearchFailure, SearchResponse>>
          successOrFailure}) = _$_SearchState;

  @override
  bool get isLoading;
  @override
  Option<Either<ValueFailure, Unit>> get isValidUrl;
  @override
  SearchResponse get items;
  @override
  SearchUrl get url;
  @override
  Option<Either<SearchFailure, SearchResponse>> get successOrFailure;
  @override
  @JsonKey(ignore: true)
  _$$_SearchStateCopyWith<_$_SearchState> get copyWith =>
      throw _privateConstructorUsedError;
}
