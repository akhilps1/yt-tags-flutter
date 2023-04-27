import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:injectable/injectable.dart';
import 'package:tags/domain/core/api_end_points.dart';
import 'package:tags/domain/search_url/i_search_facade.dart';
import 'package:tags/domain/search_url/search_failure.dart';
import 'package:tags/domain/search_url/models/search_response/search_response.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: ISearchFacade)
class SearchImpl implements ISearchFacade {
  @override
  Future<Either<SearchFailure, SearchResponse>> getVideoDetails(
      {required String videoId}) async {
    try {
      final Response response = await Dio(BaseOptions()).get(
        '${ApiEndPoints.search}id=$videoId&key=${dotenv.env["API_KEY"]}',
      );

      if (response.statusCode == 200 || response.statusCode == 201) {
        final itemsList = SearchResponse.fromJson(response.data);
        return Right(itemsList);
      } else {
        return const Left(SearchFailure.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return const Left(SearchFailure.clientFailure());
    }
  }
}
