import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/data/models/detail_tv_show_model.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/domain/repositories/detail_tv_show_repository.dart';
import 'package:the_movie_wiki/features/tv_show/features/detail_tv_show/domain/usecases/get_detail_tv_show.dart';

import '../../../../../../fixtures/detail_tv_show_response.dart';

class MockRepository extends Mock implements DetailTvShowRepository {}

void main() {
  GetDetailTvShow usecase;
  MockRepository mockRepository;

  setUp(() {
    mockRepository = MockRepository();
    usecase = GetDetailTvShow(mockRepository);
  });

  final tId = 1;
  final tDetailTvShowModel =
      DetailTvShowModel.fromJson(detailTvShowJsonResponse);
  final tDetailTvShow = tDetailTvShowModel.toDomain();

  test(
    'should get detail tv show from repository',
    () async {
      when(mockRepository.getDetailTvShowData(
        id: anyNamed('id'),
      )).thenAnswer((_) async => right(tDetailTvShow));

      final result = await usecase(id: tId);

      expect(result, right(tDetailTvShow));
      verify(mockRepository.getDetailTvShowData(id: tId));
      verifyNoMoreInteractions(mockRepository);
    },
  );
}
