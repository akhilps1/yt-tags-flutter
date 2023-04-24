import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  factory ValueFailure.invalidUrl({required String valueFailure}) =
      InvalidUrl<T>;
}
