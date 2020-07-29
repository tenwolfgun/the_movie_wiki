import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/models/detail_movie_model.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/domain/usecases/get_detail_movie.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/presentation/bloc/detail_movie_bloc.dart';

import '../../../../../../fixtures/detail_movie_response.dart';

class MockGetDetailMovie extends Mock implements GetDetailMovie {}

class MockDetailMovieBloc extends MockBloc<DetailMovieState>
    implements DetailMovieBloc {}

void main() {
  DetailMovieBloc bloc;
  MockGetDetailMovie mockGetDetailMovie;

  final tDetailMovieModel = DetailMovieModel.fromJson(jsonData);
  final tDetailMovie = tDetailMovieModel.toDetailMovie();

  setUp(() {
    mockGetDetailMovie = MockGetDetailMovie();
    bloc = MockDetailMovieBloc();
  });

  group('Get Detail Movie', () {
    blocTest(
      'should emit []',
      build: () => bloc,
      expect: [],
    );

    blocTest(
      'should emit [loading, loaded]',
      build: () {
        when(mockGetDetailMovie(
          id: anyNamed('id'),
        )).thenAnswer((_) async => right(tDetailMovie));
        return DetailMovieBloc(mockGetDetailMovie);
      },
      act: (bloc) => bloc.add(
        DetailMovieEvent.getData(id: 1),
      ),
      expect: [
        DetailMovieState.loading(),
        DetailMovieState.loaded(detailMovie: tDetailMovie),
      ],
    );

    blocTest(
      'should emit [loading, error]',
      build: () {
        when(mockGetDetailMovie(
          id: anyNamed('id'),
        )).thenAnswer((_) async => left(Failure.noInternetConnection()));
        return DetailMovieBloc(mockGetDetailMovie);
      },
      act: (bloc) => bloc.add(
        DetailMovieEvent.getData(id: 1),
      ),
      expect: [
        DetailMovieState.loading(),
        DetailMovieState.error(
          'Unable to process your request, please check your network connection.',
        ),
      ],
    );
  });
}
