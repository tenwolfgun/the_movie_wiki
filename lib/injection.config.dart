// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'features/movie/features/detail_movie/presentation/bloc/detail_movie_bloc.dart';
import 'features/movie/features/detail_movie/data/datasources/detail_movie_remote_data_source.dart';
import 'features/movie/features/detail_movie/domain/repositories/detail_movie_repository.dart';
import 'features/movie/features/detail_movie/data/repositories/detail_movie_repository_impl.dart';
import 'features/movie/features/discover_movie/presentation/bloc/discover_movie_bloc.dart';
import 'features/movie/features/discover_movie/data/datasources/disover_movie_remote_dart_source.dart';
import 'features/movie/features/discover_movie/domain/repositories/discover_movie_repository.dart';
import 'features/movie/features/discover_movie/data/repositories/discover_movie_repository_impl.dart';
import 'features/tv_show/features/discover_tv_show/presentation/bloc/discover_tv_show_bloc.dart';
import 'features/tv_show/features/discover_tv_show/data/datasources/discover_tv_show_remote_data_source.dart';
import 'features/tv_show/features/discover_tv_show/domain/repositories/discover_tv_show_repository.dart';
import 'features/tv_show/features/discover_tv_show/data/repositories/discover_tv_show_repoitory_impl.dart';
import 'features/movie/features/detail_movie/domain/usecases/get_detail_movie.dart';
import 'features/movie/features/discover_movie/domain/usecases/get_discover_movie_data.dart';
import 'features/tv_show/features/discover_tv_show/domain/usecases/get_discover_tv_show_data.dart';
import 'core/module/injectable_module.dart';
import 'core/network/network_info.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final injectableModule = _$InjectableModule();
  gh.lazySingleton<DataConnectionChecker>(
      () => injectableModule.connectionChecker);
  gh.lazySingleton<Dio>(() => injectableModule.dio);
  gh.lazySingleton<DiscoverMovieRemoteDataSource>(
      () => DiscoverMovieRemoteDataSourceImpl(get<Dio>()));
  gh.lazySingleton<DiscoverTvShowRemoteDataSource>(
      () => DiscoverTvShowRemoteDataSourceImpl(get<Dio>()));
  gh.lazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: get<DataConnectionChecker>()));
  gh.lazySingleton<DetailMovieRemoteDataSource>(
      () => DetailMovieRemoteDataSourceImpl(get<Dio>()));
  gh.lazySingleton<DetailMovieRepository>(() => DetailMovieRepositoryImpl(
      get<DetailMovieRemoteDataSource>(), get<NetworkInfo>()));
  gh.lazySingleton<DiscoverMovieRepository>(() => DiscoverMovieRepositoryImpl(
      get<DiscoverMovieRemoteDataSource>(), get<NetworkInfo>()));
  gh.lazySingleton<DiscoverTvShowRepository>(() => DiscoverTvShowRepositoryImpl(
      get<DiscoverTvShowRemoteDataSource>(), get<NetworkInfo>()));
  gh.lazySingleton<GetDetailMovie>(
      () => GetDetailMovie(get<DetailMovieRepository>()));
  gh.lazySingleton<GetDiscoverMovieData>(
      () => GetDiscoverMovieData(get<DiscoverMovieRepository>()));
  gh.lazySingleton<GetDiscoverTvShowData>(
      () => GetDiscoverTvShowData(get<DiscoverTvShowRepository>()));
  gh.factory<DetailMovieBloc>(() => DetailMovieBloc(get<GetDetailMovie>()));
  gh.factory<DiscoverMovieBloc>(
      () => DiscoverMovieBloc(get<GetDiscoverMovieData>()));
  gh.factory<DiscoverTvShowBloc>(
      () => DiscoverTvShowBloc(get<GetDiscoverTvShowData>()));
  return get;
}

class _$InjectableModule extends InjectableModule {}
