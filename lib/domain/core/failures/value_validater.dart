import 'package:dartz/dartz.dart';
import 'package:tags/domain/core/failures/failures.dart';

Either<ValueFailure<String>, String> validateVideoUrl(String input) {
  const urlRegEx = r"https://youtu.be";
  if (RegExp(urlRegEx).hasMatch(input)) {
    return right(input.split('https://youtu.be/')[1]);
  } else {
    return left(ValueFailure.invalidUrl(valueFailure: input));
  }
}
