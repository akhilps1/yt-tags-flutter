import 'package:flutter/material.dart';
import 'package:tags/application/search_url/search_bloc.dart';
import 'package:tags/domain/core/di/injectable.dart';
import 'package:tags/presentation/home/screen_home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SearchBloc>(
      create: (context) => getIt<SearchBloc>.call(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider<SearchBloc>(
            create: (context) => getIt<SearchBloc>(),
          ),
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: const ScreenHome(),
        ),
      ),
    );
  }
}

// GET https://youtube.googleapis.com/youtube/v3/videos?part=snippet%2CcontentDetails%2Cstatistics&id=mdFlZuyDU8k&key=[YOUR_API_KEY] HTTP/1.1

// Authorization: Bearer [YOUR_ACCESS_TOKEN]
