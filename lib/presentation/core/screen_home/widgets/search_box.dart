import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tags/application/blocs/search_url/search_bloc.dart';
import 'package:tags/domain/search_url/value_objects.dart';

import '../../../../application/core/colors.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController controller = TextEditingController();
    FlutterClipboard.paste().then((value) {
      controller.text = value;
    });
    final Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        color: kWhite,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20, left: 20),
              child: BlocBuilder<SearchBloc, SearchState>(
                builder: (context, state) {
                  return BlocBuilder<SearchBloc, SearchState>(
                    builder: (context, state) {
                      return Row(
                        children: [
                          state.isLoading == true
                              ? SizedBox(
                                  height: 20,
                                  width: 20,
                                  child: CircularProgressIndicator(
                                    color: kGrey[700],
                                    strokeWidth: 3,
                                  ),
                                )
                              : IconButton(
                                  padding: EdgeInsets.zero,
                                  constraints: const BoxConstraints(),
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.menu,
                                    color: kGrey[700],
                                  ),
                                  iconSize: 28,
                                )
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            Expanded(
              child: TextField(
                controller: controller,
                onChanged: (value) async {},
                style: const TextStyle(
                  fontSize: 18,
                ),
                decoration: const InputDecoration(
                  hintText: 'Enter Video URL',
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: IconButton(
                onPressed: () async {
                  FocusScopeNode currentFocus = FocusScope.of(context);
                  if (!currentFocus.hasPrimaryFocus) {
                    currentFocus.unfocus();
                  }
                  // get videoid
                  final SearchUrl url = SearchUrl(controller.text);
                  url.value.fold(
                    (falure) {
                      _showSnackBar(context);
                    },
                    (videoId) {
                      context.read<SearchBloc>().add(
                            SearchButtonClickEvent(searchUrl: videoId),
                          );
                    },
                  );
                },
                icon: Icon(
                  Icons.search,
                  color: kGrey[700],
                  size: 28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSnackBar(BuildContext context) {
    const snackBar = SnackBar(
      content: Text("Enter a valid youtube video URL"),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
