// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:movies/core/network/dio_network_service/dio_network_service.dart'
    as _i311;
import 'package:movies/core/network/network_service.dart' as _i449;
import 'package:movies/features/people/data/datasource/people_local_source.dart'
    as _i623;
import 'package:movies/features/people/data/datasource/people_remote_source.dart'
    as _i45;
import 'package:movies/features/people/data/repositories/people_repository_impl.dart'
    as _i139;
import 'package:movies/features/people/domain/repositories/people_repository.dart'
    as _i812;
import 'package:movies/features/people/domain/usecase/get_person_photos_use_case.dart'
    as _i141;
import 'package:movies/features/people/domain/usecase/get_popular_people_use_case.dart'
    as _i514;
import 'package:movies/features/people/domain/usecase/save_person_photo_use_case.dart'
    as _i211;
import 'package:movies/features/people/presentation/manager/get_person_photos_cubit/get_person_photos_cubit.dart'
    as _i976;
import 'package:movies/features/people/presentation/manager/get_popular_people_cubit/get_popular_people_cubit.dart'
    as _i259;
import 'package:movies/features/people/presentation/manager/save_person_photo_cubit/save_photo_cubit.dart'
    as _i349;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.lazySingleton<_i449.NetworkService>(() => _i311.DioNetworkService());
    gh.lazySingleton<_i45.PeopleRemoteSource>(
      () => _i45.PeopleRemoteSourceImpl(gh<_i449.NetworkService>()),
    );
    gh.lazySingleton<_i623.PeopleLocalSource>(
      () => _i623.PeopleLocalSourceImpl(),
    );
    gh.lazySingleton<_i812.PeopleRepository>(
      () => _i139.PeopleRepositoryImpl(
        gh<_i623.PeopleLocalSource>(),
        gh<_i45.PeopleRemoteSource>(),
      ),
    );
    gh.lazySingleton<_i141.GetPersonPhotosUseCase>(
      () => _i141.GetPersonPhotosUseCase(gh<_i812.PeopleRepository>()),
    );
    gh.lazySingleton<_i514.GetPopularPeopleUseCase>(
      () => _i514.GetPopularPeopleUseCase(gh<_i812.PeopleRepository>()),
    );
    gh.factory<_i976.GetPersonPhotosCubit>(
      () => _i976.GetPersonPhotosCubit(gh<_i141.GetPersonPhotosUseCase>()),
    );
    gh.factory<_i259.GetPopularPeopleCubit>(
      () => _i259.GetPopularPeopleCubit(gh<_i514.GetPopularPeopleUseCase>()),
    );
    gh.lazySingleton<_i211.SavePersonPhotoUseCase>(
      () => _i211.SavePersonPhotoUseCase(gh<_i812.PeopleRepository>()),
    );
    gh.factory<_i349.SavePhotoCubit>(
      () => _i349.SavePhotoCubit(gh<_i211.SavePersonPhotoUseCase>()),
    );
    return this;
  }
}
