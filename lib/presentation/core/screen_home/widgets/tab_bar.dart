// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tags/application/blocs/blocs.dart';

import 'package:tags/application/core/constants.dart';
import 'package:tags/application/blocs/search_url/search_bloc.dart';

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
          responseOrFailure.fold((l) {}, (r) {
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
            ),
            DescriptionView(
              description: description,
            ),
            ThumbnailView(
              thumbnailUrl: thumbnailUrl,
              title: title,
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
  }) : super(key: key);
  final List tags;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                            fontSize: 16, fontWeight: FontWeight.bold),
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
                  _showSnackBar(context, 'No tags fount');
                } else {
                  String tag = tags.toString();

                  FlutterClipboard.copy(tag.substring(1, tag.length - 1));
                  _showSnackBar(context, 'Tags copyed');
                }
              },
              child: const Icon(Icons.copy),
            ),
          ),
        )
      ],
    );
  }

  void _showSnackBar(BuildContext context, String msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class DescriptionView extends StatelessWidget {
  const DescriptionView({
    Key? key,
    required this.description,
  }) : super(key: key);
  final String description;

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                          fontSize: 17, fontWeight: FontWeight.bold),
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
                  _showSnackBar(context, 'Description not fount');
                } else {
                  FlutterClipboard.copy(description);
                  _showSnackBar(context, 'Description copyed');
                }
              },
              child: const Icon(Icons.copy),
            ),
          ),
        )
      ],
    );
  }

  void _showSnackBar(BuildContext context, String msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

class ThumbnailView extends StatelessWidget {
  const ThumbnailView({
    Key? key,
    required this.thumbnailUrl,
    required this.title,
  }) : super(key: key);
  final String thumbnailUrl;
  final String title;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Positioned(
          top: 50,
          right: 5,
          left: 5,
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
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
                  _showSnackBar(context, 'Thumbnail not fount');
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
                      ? _showSnackBar(context, 'Thumbnail downloaded')
                      : _showSnackBar(context, 'failed');
                }
              },
              child: const Icon(Icons.download),
            ),
          ),
        )
      ],
    );
  }

  void _showSnackBar(BuildContext context, String msg) {
    final snackBar = SnackBar(
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
