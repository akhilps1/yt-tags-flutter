// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/blocs/download_image_button_click/download_image_button_click_bloc.dart'
    as _i3;
import '../../../application/blocs/search_url/search_bloc.dart' as _i6;
import '../../../infrastrecture/search_url/search_impl.dart' as _i5;
import '../../search_url/i_search_facade.dart' as _i4;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.DownloadImageButtonClickBloc>(
      () => _i3.DownloadImageButtonClickBloc());
  gh.lazySingleton<_i4.ISearchFacade>(() => _i5.SearchImpl());
  gh.factory<_i6.SearchBloc>(() => _i6.SearchBloc(gh<_i4.ISearchFacade>()));
  return getIt;
}
