// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'download_image_button_click_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadImageButtonClickEvent {
  String get path => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) downloadButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? downloadButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? downloadButtonClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadButtonClick value) downloadButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadButtonClick value)? downloadButtonClick,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadButtonClick value)? downloadButtonClick,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadImageButtonClickEventCopyWith<DownloadImageButtonClickEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadImageButtonClickEventCopyWith<$Res> {
  factory $DownloadImageButtonClickEventCopyWith(
          DownloadImageButtonClickEvent value,
          $Res Function(DownloadImageButtonClickEvent) then) =
      _$DownloadImageButtonClickEventCopyWithImpl<$Res,
          DownloadImageButtonClickEvent>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class _$DownloadImageButtonClickEventCopyWithImpl<$Res,
        $Val extends DownloadImageButtonClickEvent>
    implements $DownloadImageButtonClickEventCopyWith<$Res> {
  _$DownloadImageButtonClickEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DownloadButtonClickCopyWith<$Res>
    implements $DownloadImageButtonClickEventCopyWith<$Res> {
  factory _$$DownloadButtonClickCopyWith(_$DownloadButtonClick value,
          $Res Function(_$DownloadButtonClick) then) =
      __$$DownloadButtonClickCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$DownloadButtonClickCopyWithImpl<$Res>
    extends _$DownloadImageButtonClickEventCopyWithImpl<$Res,
        _$DownloadButtonClick> implements _$$DownloadButtonClickCopyWith<$Res> {
  __$$DownloadButtonClickCopyWithImpl(
      _$DownloadButtonClick _value, $Res Function(_$DownloadButtonClick) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$DownloadButtonClick(
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DownloadButtonClick implements DownloadButtonClick {
  const _$DownloadButtonClick({required this.path});

  @override
  final String path;

  @override
  String toString() {
    return 'DownloadImageButtonClickEvent.downloadButtonClick(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DownloadButtonClick &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DownloadButtonClickCopyWith<_$DownloadButtonClick> get copyWith =>
      __$$DownloadButtonClickCopyWithImpl<_$DownloadButtonClick>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String path) downloadButtonClick,
  }) {
    return downloadButtonClick(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String path)? downloadButtonClick,
  }) {
    return downloadButtonClick?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String path)? downloadButtonClick,
    required TResult orElse(),
  }) {
    if (downloadButtonClick != null) {
      return downloadButtonClick(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(DownloadButtonClick value) downloadButtonClick,
  }) {
    return downloadButtonClick(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(DownloadButtonClick value)? downloadButtonClick,
  }) {
    return downloadButtonClick?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(DownloadButtonClick value)? downloadButtonClick,
    required TResult orElse(),
  }) {
    if (downloadButtonClick != null) {
      return downloadButtonClick(this);
    }
    return orElse();
  }
}

abstract class DownloadButtonClick implements DownloadImageButtonClickEvent {
  const factory DownloadButtonClick({required final String path}) =
      _$DownloadButtonClick;

  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$DownloadButtonClickCopyWith<_$DownloadButtonClick> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DownloadImageButtonClickState {
  bool get isCompleted => throw _privateConstructorUsedError;
  String get path => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadImageButtonClickStateCopyWith<DownloadImageButtonClickState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadImageButtonClickStateCopyWith<$Res> {
  factory $DownloadImageButtonClickStateCopyWith(
          DownloadImageButtonClickState value,
          $Res Function(DownloadImageButtonClickState) then) =
      _$DownloadImageButtonClickStateCopyWithImpl<$Res,
          DownloadImageButtonClickState>;
  @useResult
  $Res call({bool isCompleted, String path});
}

/// @nodoc
class _$DownloadImageButtonClickStateCopyWithImpl<$Res,
        $Val extends DownloadImageButtonClickState>
    implements $DownloadImageButtonClickStateCopyWith<$Res> {
  _$DownloadImageButtonClickStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompleted = null,
    Object? path = null,
  }) {
    return _then(_value.copyWith(
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadImageButtonClickStateCopyWith<$Res>
    implements $DownloadImageButtonClickStateCopyWith<$Res> {
  factory _$$_DownloadImageButtonClickStateCopyWith(
          _$_DownloadImageButtonClickState value,
          $Res Function(_$_DownloadImageButtonClickState) then) =
      __$$_DownloadImageButtonClickStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isCompleted, String path});
}

/// @nodoc
class __$$_DownloadImageButtonClickStateCopyWithImpl<$Res>
    extends _$DownloadImageButtonClickStateCopyWithImpl<$Res,
        _$_DownloadImageButtonClickState>
    implements _$$_DownloadImageButtonClickStateCopyWith<$Res> {
  __$$_DownloadImageButtonClickStateCopyWithImpl(
      _$_DownloadImageButtonClickState _value,
      $Res Function(_$_DownloadImageButtonClickState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCompleted = null,
    Object? path = null,
  }) {
    return _then(_$_DownloadImageButtonClickState(
      isCompleted: null == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      path: null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DownloadImageButtonClickState
    implements _DownloadImageButtonClickState {
  const _$_DownloadImageButtonClickState(
      {required this.isCompleted, required this.path});

  @override
  final bool isCompleted;
  @override
  final String path;

  @override
  String toString() {
    return 'DownloadImageButtonClickState(isCompleted: $isCompleted, path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadImageButtonClickState &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isCompleted, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadImageButtonClickStateCopyWith<_$_DownloadImageButtonClickState>
      get copyWith => __$$_DownloadImageButtonClickStateCopyWithImpl<
          _$_DownloadImageButtonClickState>(this, _$identity);
}

abstract class _DownloadImageButtonClickState
    implements DownloadImageButtonClickState {
  const factory _DownloadImageButtonClickState(
      {required final bool isCompleted,
      required final String path}) = _$_DownloadImageButtonClickState;

  @override
  bool get isCompleted;
  @override
  String get path;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadImageButtonClickStateCopyWith<_$_DownloadImageButtonClickState>
      get copyWith => throw _privateConstructorUsedError;
}
