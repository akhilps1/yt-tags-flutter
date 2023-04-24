import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:tags/domain/core/di/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async {
  await initGetIt(getIt, environment: Environment.prod);
}
