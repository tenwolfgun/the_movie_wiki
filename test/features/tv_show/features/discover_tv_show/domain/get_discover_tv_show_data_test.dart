import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/data/models/discover_tv_show_model.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/domain/repositories/discover_tv_show_repository.dart';
import 'package:the_movie_wiki/features/tv_show/features/discover_tv_show/domain/usecases/get_discover_tv_show_data.dart';

import '../../../../../fixtures/fixture_reader.dart';

class MockDiscoverTvShowRepository extends Mock
    implements DiscoverTvShowRepository {}

void main() {
  GetDiscoverTvShowData usecase;
  MockDiscoverTvShowRepository mockDiscoverTvShowRepository;

  setUp(() {
    mockDiscoverTvShowRepository = MockDiscoverTvShowRepository();
    usecase = GetDiscoverTvShowData(mockDiscoverTvShowRepository);
  });

  final tType = 'now_playing';
  final tPage = 1;

  final Map<String, dynamic> jsonMap = json.decode(
    fixture('discover_tv_show.json'),
  );

  final tDiscoverTvShowModel = DiscoverTvShowModel.fromJson(jsonMap);
  final tDiscoverTvShow = tDiscoverTvShowModel.toDomain();

  test(
    'shoud get movie data from the repository',
    () async {
      when(
        mockDiscoverTvShowRepository.getDiscoverTvShowData(
          type: anyNamed('type'),
          page: anyNamed('page'),
        ),
      ).thenAnswer(
        (_) async => right(tDiscoverTvShow),
      );

      final result = await usecase(type: tType, page: tPage);

      expect(result, right(tDiscoverTvShow));
      verify(mockDiscoverTvShowRepository.getDiscoverTvShowData(
        type: tType,
        page: tPage,
      ));
      verifyNoMoreInteractions(mockDiscoverTvShowRepository);
    },
  );
}
