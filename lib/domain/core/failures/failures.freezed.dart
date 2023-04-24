// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  String get valueFailure => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String valueFailure) invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String valueFailure)? invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String valueFailure)? invalidUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidUrl<T> value) invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidUrl<T> value)? invalidUrl,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res, ValueFailure<T>>;
  @useResult
  $Res call({String valueFailure});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res, $Val extends ValueFailure<T>>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueFailure = null,
  }) {
    return _then(_value.copyWith(
      valueFailure: null == valueFailure
          ? _value.valueFailure
          : valueFailure // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InvalidUrlCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory _$$InvalidUrlCopyWith(
          _$InvalidUrl<T> value, $Res Function(_$InvalidUrl<T>) then) =
      __$$InvalidUrlCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String valueFailure});
}

/// @nodoc
class __$$InvalidUrlCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res, _$InvalidUrl<T>>
    implements _$$InvalidUrlCopyWith<T, $Res> {
  __$$InvalidUrlCopyWithImpl(
      _$InvalidUrl<T> _value, $Res Function(_$InvalidUrl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? valueFailure = null,
  }) {
    return _then(_$InvalidUrl<T>(
      valueFailure: null == valueFailure
          ? _value.valueFailure
          : valueFailure // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InvalidUrl<T> implements InvalidUrl<T> {
  _$InvalidUrl({required this.valueFailure});

  @override
  final String valueFailure;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidUrl(valueFailure: $valueFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvalidUrl<T> &&
            (identical(other.valueFailure, valueFailure) ||
                other.valueFailure == valueFailure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, valueFailure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvalidUrlCopyWith<T, _$InvalidUrl<T>> get copyWith =>
      __$$InvalidUrlCopyWithImpl<T, _$InvalidUrl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String valueFailure) invalidUrl,
  }) {
    return invalidUrl(valueFailure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String valueFailure)? invalidUrl,
  }) {
    return invalidUrl?.call(valueFailure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String valueFailure)? invalidUrl,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(valueFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InvalidUrl<T> value) invalidUrl,
  }) {
    return invalidUrl(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InvalidUrl<T> value)? invalidUrl,
  }) {
    return invalidUrl?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InvalidUrl<T> value)? invalidUrl,
    required TResult orElse(),
  }) {
    if (invalidUrl != null) {
      return invalidUrl(this);
    }
    return orElse();
  }
}

abstract class InvalidUrl<T> implements ValueFailure<T> {
  factory InvalidUrl({required final String valueFailure}) = _$InvalidUrl<T>;

  @override
  String get valueFailure;
  @override
  @JsonKey(ignore: true)
  _$$InvalidUrlCopyWith<T, _$InvalidUrl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
