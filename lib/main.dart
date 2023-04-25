import 'package:flutter/material.dart';
import 'package:tags/domain/core/di/injectable.dart';
import 'package:tags/presentation/core/core/app_widget.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const AppWidget());
}
