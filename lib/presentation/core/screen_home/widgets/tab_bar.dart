import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tags/application/search_url/search_bloc.dart';

import '../../../../domain/search_url/models/search_response/search_response.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      children: <Widget>[
        TagsView(),
        DescriptionView(),
        ThumbnailView(),
      ],
    );
  }
}

class TagsView extends StatelessWidget {
  const TagsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            List tags = [];
            state.successOrFailure.fold(() {}, (responseOrFailure) {
              responseOrFailure.fold((l) {}, (r) {
                log(r.toString());
                if (r.items != null) {
                  tags.addAll(r.items!.single.snippet!.tags ?? []);
                }
              });
            });

            return ListView.builder(
              itemCount: tags.length,
              itemBuilder: (BuildContext context, int index) {
                final tag = tags[index];
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Text(tag.toString()),
                  ),
                );
              },
            );
          },
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: SizedBox(
            child: FloatingActionButton(
              onPressed: () {},
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
  const DescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            // final items = state.searchResponse.items;
            // if (items == null) {}
            final description = "";

            return ListView(
              children: [
                Text(description.toString()),
              ],
            );
          },
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: SizedBox(
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.copy),
            ),
          ),
        )
      ],
    );
  }
}

class ThumbnailView extends StatelessWidget {
  const ThumbnailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            // final items = state.searchResponse.items;
            // if (items == null) {}
            final thumbnail = "abcd";

            return Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // SizedBox(
                //   height: 250,
                //   child: Image.network(
                //     "",
                //     fit: BoxFit.cover,
                //   ),
                // )
              ],
            );
          },
        ),
        Positioned(
          right: 16,
          bottom: 16,
          child: SizedBox(
            child: FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.copy),
            ),
          ),
        )
      ],
    );
  }
}
