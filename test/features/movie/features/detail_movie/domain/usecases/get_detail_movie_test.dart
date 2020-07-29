import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/data/models/detail_movie_model.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/domain/repositories/detail_movie_repository.dart';
import 'package:the_movie_wiki/features/movie/features/detail_movie/domain/usecases/get_detail_movie.dart';

import '../../../../../../fixtures/detail_movie_response.dart';

class MockRepository extends Mock implements DetailMovieRepository {}

void main() {
  GetDetailMovie usecase;
  MockRepository mockRepository;

  setUp(
    () {
      mockRepository = MockRepository();
      usecase = GetDetailMovie(mockRepository);
    },
  );

  final tId = 1;
  final tDetailMovieModel = DetailMovieModel.fromJson(jsonData);
  final tDetailMovie = tDetailMovieModel.toDetailMovie();

  test(
    'shoud get detail movie from the repository',
    () async {
      when(mockRepository.getDetailMovie(
        id: anyNamed('id'),
      )).thenAnswer((_) async => right(tDetailMovie));

      final result = await usecase(id: tId);

      expect(result, right(tDetailMovie));
      verify(mockRepository.getDetailMovie(id: tId));
      verifyNoMoreInteractions(mockRepository);
    },
  );
}
