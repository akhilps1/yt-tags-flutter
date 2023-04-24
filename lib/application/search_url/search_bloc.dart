import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tags/domain/core/failures/failures.dart';

import 'package:tags/domain/search_url/i_search_facade.dart';
import 'package:tags/domain/search_url/models/search_response/search_response.dart';
import 'package:tags/domain/search_url/search_failure.dart';
import 'package:tags/domain/search_url/value_objects.dart';
import 'package:dartz/dartz.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

@injectable
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchFacade _iSearchFacade;
  SearchBloc(this._iSearchFacade) : super(SearchState.initial()) {
    on<UrlChangEvent>((event, emit) {
      emit(state.copyWith(
        isLoading: false,
        isValidUrl: event.searchUrl.value.fold(
          (l) => some(left(l)),
          (r) => none(),
        ),
        items: SearchResponse(items: []),
        url: event.searchUrl,
        successOrFailure: none(),
      ));
    });

    on<SearchButtonClickEvent>((event, emit) async {
      final Either<SearchFailure, SearchResponse> result =
          await _iSearchFacade.getVideoDetails(videoId: event.searchUrl);
      emit(
        result.fold(
            (failure) => state.copyWith(
                  isLoading: false,
                  successOrFailure: option(
                    true,
                    Left(failure),
                  ),
                  items: SearchResponse(items: []),
                ), (success) {
          log(success.toString());
          return state.copyWith(
            isLoading: false,
            successOrFailure: none(),
            items: success,
          );
        }),
      );
    });
  }
}
