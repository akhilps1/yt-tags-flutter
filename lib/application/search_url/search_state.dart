part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState({
    required bool isLoading,
    required Option<Either<ValueFailure, Unit>> isValidUrl,
    required SearchResponse items,
    required SearchUrl url,
    required Option<Either<SearchFailure, SearchResponse>> successOrFailure,
  }) = _SearchState;

  factory SearchState.initial() => SearchState(
        isLoading: false,
        isValidUrl: none(),
        items: SearchResponse(items: []),
        url: SearchUrl(''),
        successOrFailure: none(),
      );
}
