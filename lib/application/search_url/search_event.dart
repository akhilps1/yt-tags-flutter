part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.urlChanged({
    required SearchUrl searchUrl,
  }) = UrlChangEvent;

  const factory SearchEvent.searchButtonClicked({
    required String searchUrl,
  }) = SearchButtonClickEvent;
}
