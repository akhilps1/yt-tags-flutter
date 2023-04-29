part of 'download_image_button_click_bloc.dart';

@freezed
class DownloadImageButtonClickEvent with _$DownloadImageButtonClickEvent {
  const factory DownloadImageButtonClickEvent.downloadButtonClick(
      {required String path}) = DownloadButtonClick;
}
