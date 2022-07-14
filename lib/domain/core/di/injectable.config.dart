// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../../application/downloads/downloads_bloc.dart' as _i9;
import '../../../application/fast_laugh/fast_laugh_bloc.dart' as _i10;
import '../../../application/hot_and_new/hot_and_new_bloc.dart' as _i11;
import '../../../application/search/search_bloc.dart' as _i12;
import '../../../infrastucture/downloads/downloads_repository.dart' as _i6;
import '../../../infrastucture/hot_and_new/hot_and_new.repository.dart' as _i4;
import '../../../infrastucture/search/search_repository.dart' as _i8;
import '../../downloads/i_download_repo.dart' as _i5;
import '../../new_hot/hot_and_new_service.dart' as _i3;
import '../../search/model/search_service.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.HotAndNewService>(() => _i4.HotAndNewRepository());
  gh.lazySingleton<_i5.IDownloadRepo>(() => _i6.DownloadsRepository());
  gh.lazySingleton<_i7.SearchService>(() => _i8.SearchImp());
  gh.factory<_i9.DownloadsBloc>(
      () => _i9.DownloadsBloc(get<_i5.IDownloadRepo>()));
  gh.factory<_i10.FastLaughBloc>(
      () => _i10.FastLaughBloc(get<_i5.IDownloadRepo>()));
  gh.factory<_i11.HotAndNewBloc>(
      () => _i11.HotAndNewBloc(get<_i3.HotAndNewService>()));
  gh.factory<_i12.SearchBloc>(() =>
      _i12.SearchBloc(get<_i5.IDownloadRepo>(), get<_i7.SearchService>()));
  return get;
}
