part of 'download_image_button_click_bloc.dart';

@freezed
class DownloadImageButtonClickState with _$DownloadImageButtonClickState {
  const factory DownloadImageButtonClickState({
    required bool isCompleted,
    required String path,
  }) = _DownloadImageButtonClickState;
  factory DownloadImageButtonClickState.initial() =>
      const DownloadImageButtonClickState(
        path: '',
        isCompleted: true,
      );
}
