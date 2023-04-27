import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:tags/domain/core/failures/failures.dart';

@immutable
abstract class ValueObject<T> extends Equatable {
  const ValueObject();

  Either<ValueFailure<String>, String> get value;

  bool isValid() => value.isRight();

  @override
  List<Object> get props => [value];

  @override
  String toString() => 'Value($value)';
}
