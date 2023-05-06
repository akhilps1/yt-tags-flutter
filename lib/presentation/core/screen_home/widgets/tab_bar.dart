// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:tags/application/blocs/blocs.dart';
import 'package:tags/application/core/constants.dart';
import 'package:tags/application/core/strings.dart';
import 'package:tags/domain/search_url/search_failure.dart';
import 'package:tags/presentation/core/screen_home/widgets/shimmer_widget.dart';

//  https://youtu.be/2jj7y5XGaDI

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        List<String> tags = [];
        String description = '';
        String thumbnailUrl = '';
        String title = '';

        state.successOrFailure.fold(() {}, (responseOrFailure) {
          responseOrFailure.fold((failure) {
            if (failure == const SearchFailure.connectionTimeoutFailure()) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _showSnackBar(context, mConnctionTimeout);
              });
            }
            if (failure == const SearchFailure.clientFailure()) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _showSnackBar(context, mNoDetailFount);
              });
            }
            if (failure == const SearchFailure.connectionError()) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _showSnackBar(context, mConnectionError);
              });
            }
          }, (r) {
            if (r.items!.isNotEmpty && r.items != null) {
              tags = r.items!.single.snippet.tags ?? [];
              description = r.items!.single.snippet.description ?? '';
              thumbnailUrl =
                  r.items!.single.snippet.thumbnails.maxres.url ?? '';

              title = r.items!.single.snippet.title ?? '';
            }
          });
        });
        return TabBarView(
          children: <Widget>[
            TagsView(
              tags: tags,
              state: state,
            ),
            DescriptionView(
              description: description,
              state: state,
            ),
            ThumbnailView(
              thumbnailUrl: thumbnailUrl,
              title: title,
              state: state,
            ),
          ],
        );
      },
    );
  }
}

// Tags View
class TagsView extends StatelessWidget {
  const TagsView({
    Key? key,
    required this.tags,
    required this.state,
  }) : super(key: key);
  final List tags;
  final SearchState state;

  @override
  Widget build(BuildContext context) {
    return state.isLoading == true
        ? showShimmerLayout(state, 10, const EdgeInsets.all(12))
        : Stack(
            children: [
              tags.isNotEmpty
                  ? ListView.builder(
                      itemCount: tags.length,
                      itemBuilder: (BuildContext context, int index) {
                        final tag = tags[index];
                        return Card(
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              tag,
                              style: const TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w500),
                            ),
                          ),
                        );
                      },
                    )
                  : ksizedBox,
              Positioned(
                right: 16,
                bottom: 16,
                child: SizedBox(
                  child: FloatingActionButton(
                    onPressed: () {
                      if (tags.isEmpty) {
                        _showSnackBar(context, mNoTagFount);
                      } else {
                        String tag = tags.toString();

                        FlutterClipboard.copy(tag.substring(1, tag.length - 1));
                        _showSnackBar(context, mCopyed);
                      }
                    },
                    child: const Icon(Icons.copy),
                  ),
                ),
              )
            ],
          );
  }
}

class DescriptionView extends StatelessWidget {
  const DescriptionView({
    Key? key,
    required this.description,
    required this.state,
  }) : super(key: key);
  final String description;
  final SearchState state;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return state.isLoading == true
        ? shmmierWidgetDetails(state, size)
        : Stack(
            children: [
              ListView(
                children: [
                  description.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            description.toString(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w500),
                          ),
                        )
                      : ksizedBox,
                ],
              ),
              Positioned(
                right: 16,
                bottom: 16,
                child: SizedBox(
                  child: FloatingActionButton(
                    onPressed: () {
                      if (description.isEmpty) {
                        _showSnackBar(context, mNoDescriptionFount);
                      } else {
                        FlutterClipboard.copy(description);
                        _showSnackBar(context, mCopyed);
                      }
                    },
                    child: const Icon(Icons.copy),
                  ),
                ),
              )
            ],
          );
  }
}

class ThumbnailView extends StatelessWidget {
  const ThumbnailView({
    Key? key,
    required this.thumbnailUrl,
    required this.title,
    required this.state,
  }) : super(key: key);
  final String thumbnailUrl;
  final String title;
  final SearchState state;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return state.isLoading == true
        ? shmmierWidgetThumbnail(state, size)
        : Stack(
            children: [
              Positioned(
                top: 50,
                right: 8,
                left: 8,
                child: Text(
                  title,
                  maxLines: 3,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  thumbnailUrl.isNotEmpty
                      ? Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            child: Image.network(
                              thumbnailUrl,
                              height: 200,
                              width: size.width - 10,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                      : ksizedBox,
                ],
              ),
              Positioned(
                right: 16,
                bottom: 16,
                child: SizedBox(
                  child: FloatingActionButton(
                    onPressed: () async {
                      if (thumbnailUrl.isEmpty) {
                        _showSnackBar(context, mNoThubnailFount);
                      } else {
                        context
                            .read<DownloadImageButtonClickBloc>()
                            .add(DownloadButtonClick(path: thumbnailUrl));
                        //
                        context
                                    .read<DownloadImageButtonClickBloc>()
                                    .state
                                    .isCompleted ==
                                true
                            ? _showSnackBar(context, mDownloaed)
                            : _showSnackBar(context, mFailed);
                      }
                    },
                    child: const Icon(Icons.download),
                  ),
                ),
              )
            ],
          );
  }
}

void _showSnackBar(BuildContext context, String msg) {
  final snackBar = SnackBar(
    content: Text(msg),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
