import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_failure.freezed.dart';

@freezed
class SearchFailure with _$SearchFailure {
  const factory SearchFailure.clientFailure() = _ClientFailure;
  const factory SearchFailure.serverFailure() = _ServerFailure;
  const factory SearchFailure.connectionTimeoutFailure() =
      _ConnectionTimeoutFailure;
  const factory SearchFailure.connectionError() = _ConnectionError;
}
