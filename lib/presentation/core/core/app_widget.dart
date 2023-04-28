import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tags/application/core/colors.dart';
import 'package:tags/application/search_url/search_bloc.dart';
import 'package:tags/domain/core/di/injectable.dart';
import 'package:tags/presentation/core/screen_home/screen_home.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
    );
    return BlocProvider<SearchBloc>(
      create: (context) => getIt<SearchBloc>.call(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SearchBloc>(
            create: (context) => getIt<SearchBloc>(),
          ),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: kBlue,
          ),
          home: const ScreenHome(),
        ),
      ),
    );
  }
}
