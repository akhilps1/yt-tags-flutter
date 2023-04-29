import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_file_downloader/flutter_file_downloader.dart';
import 'package:injectable/injectable.dart';

part 'download_image_button_click_event.dart';
part 'download_image_button_click_state.dart';
part 'download_image_button_click_bloc.freezed.dart';

@injectable
class DownloadImageButtonClickBloc
    extends Bloc<DownloadImageButtonClickEvent, DownloadImageButtonClickState> {
  DownloadImageButtonClickBloc()
      : super(DownloadImageButtonClickState.initial()) {
    on<DownloadImageButtonClickEvent>((event, emit) async {
      FileDownloader.downloadFile(
        url: event.path,
        onDownloadCompleted: (String filePath) => emit(
          state.copyWith(isCompleted: true, path: ''),
        ),
      );
    });
  }
}
