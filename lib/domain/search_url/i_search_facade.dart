import 'package:dartz/dartz.dart';
import 'package:tags/domain/search_url/models/search_response/search_response.dart';

import 'package:tags/domain/search_url/search_failure.dart';

abstract class ISearchFacade {
  Future<Either<SearchFailure, SearchResponse>> getVideoDetails({
    required String videoId,
  });
}
