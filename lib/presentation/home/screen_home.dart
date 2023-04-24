import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tags/application/search_url/search_bloc.dart';
import 'package:tags/domain/core/di/injectable.dart';
import 'package:tags/domain/search_url/value_objects.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              BlocProvider.of<SearchBloc>(context).add(UrlChangEvent(
                  searchUrl: SearchUrl('https://youtu.be/YCixn4U6Lno')));
              BlocProvider.of<SearchBloc>(context).add(
                  const SearchButtonClickEvent(
                      searchUrl: 'https://youtu.be/YCixn4U6Lno'));
            },
            child: const Text('get')),
      ),
    );
  }
}
