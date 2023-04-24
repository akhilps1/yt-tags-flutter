// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';

import 'package:tags/domain/core/failures/failures.dart';
import 'package:tags/domain/core/failures/value_object.dart';
import 'package:tags/domain/core/failures/value_validater.dart';

class SearchUrl extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SearchUrl(String value) {
    return SearchUrl._(validateVideoUrl(value));
  }

  const SearchUrl._(
    this.value,
  );
}
