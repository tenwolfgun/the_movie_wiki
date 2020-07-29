// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:the_movie_wiki/core/module/injectable_module.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/datasources/disover_movie_remote_dart_source.dart';
import 'package:the_movie_wiki/core/network/network_info.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/datasources/detail_movie_remote_data_source.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/repositories/detail_movie_repository_impl.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/domain/repositories/detail_movie_repository.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/repositories/discover_movie_repository_impl.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/domain/repositories/discover_movie_repository.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/domain/usecases/get_detail_movie.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/domain/usecases/get_discover_movie_data.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/bloc/detail_movie_bloc.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/presentation/bloc/discover_movie_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final injectableModule = _$InjectableModule();
  g.registerLazySingleton<DataConnectionChecker>(
      () => injectableModule.connectionChecker);
  g.registerLazySingleton<Dio>(() => injectableModule.dio);
  g.registerLazySingleton<DiscoverMovieRemoteDataSource>(
      () => DiscoverMovieRemoteDataSourceImpl(g<Dio>()));
  g.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: g<DataConnectionChecker>()));
  g.registerLazySingleton<DetailMovieRemoteDataSource>(
      () => DetailMovieRemoteDataSourceImpl(g<Dio>()));
  g.registerLazySingleton<DetailMovieRepository>(() =>
      DetailMovieRepositoryImpl(
          g<DetailMovieRemoteDataSource>(), g<NetworkInfo>()));
  g.registerLazySingleton<DiscoverMovieRepository>(() =>
      DiscoverMovieRepositoryImpl(
          g<DiscoverMovieRemoteDataSource>(), g<NetworkInfo>()));
  g.registerLazySingleton<GetDetailMovie>(
      () => GetDetailMovie(g<DetailMovieRepository>()));
  g.registerLazySingleton<GetDiscoverMovieData>(
      () => GetDiscoverMovieData(g<DiscoverMovieRepository>()));
  g.registerFactory<DetailMovieBloc>(
      () => DetailMovieBloc(g<GetDetailMovie>()));
  g.registerFactory<DiscoverMovieBloc>(
      () => DiscoverMovieBloc(g<GetDiscoverMovieData>()));
}

class _$InjectableModule extends InjectableModule {}
