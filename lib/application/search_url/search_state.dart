part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required Option<Either<InvalidUrl, Unit>> isValidUrl,
    required SearchResponse searchResponse,
    required SearchUrl url,
    required Option<Either<SearchFailure, SearchResponse>> successOrFailure,
  }) = _SearchState;

  factory SearchState.initial() => SearchState(
        isLoading: false,
        isValidUrl: none(),
        searchResponse: SearchResponse(),
        url: SearchUrl(''),
        successOrFailure: none(),
      );
}
