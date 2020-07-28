import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:the_movie_wiki/core/error/failure.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/data/models/discover_movie_model.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/domain/usecases/get_discover_movie_data.dart';
import 'package:the_movie_wiki/features/movie/features/discover_movie/presentation/bloc/discover_movie_bloc.dart';

import '../../../../../../fixtures/fixture_reader.dart';

class MockGetDiscoverMovieData extends Mock implements GetDiscoverMovieData {}

class MockDiscoverMovieBloc extends MockBloc<DiscoverMovieState>
    implements DiscoverMovieBloc {}

void main() {
  DiscoverMovieBloc bloc;
  MockGetDiscoverMovieData mockGetDiscoverMovieData;

  final Map<String, dynamic> jsonMap = json.decode(
    fixture('discover_movie.json'),
  );
  final jsonDataEndOfResult = {
    "results": [],
    "page": 1,
    "total_results": 597,
    "dates": {"maximum": "2020-07-20", "minimum": "2020-06-02"},
    "total_pages": 1
  };

  final tDiscoverMovieModel = DiscoverMovieModel.fromJson(jsonMap);
  final tDiscoverMovie = tDiscoverMovieModel.toDomain();
  final tDiscoverMovieModelEndOfResults =
      DiscoverMovieModel.fromJson(jsonDataEndOfResult);
  final tDiscoverMovieEndOfResult = tDiscoverMovieModelEndOfResults.toDomain();

  setUp(() {
    mockGetDiscoverMovieData = MockGetDiscoverMovieData();
    bloc = MockDiscoverMovieBloc();
  });

  group('Get Movie Data Event', () {
    blocTest(
      'should emit []',
      build: () => bloc,
      expect: [],
    );

    blocTest(
      'should emit [loading, loaded]',
      build: () {
        when(
          mockGetDiscoverMovieData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          ),
        ).thenAnswer((_) async => Right(tDiscoverMovie));
        return DiscoverMovieBloc(mockGetDiscoverMovieData);
      },
      act: (bloc) => bloc.add(
        DiscoverMovieEvent.getMovieData('now_playing', 1),
      ),
      wait: const Duration(milliseconds: 500),
      expect: [
        DiscoverMovieState.loading(),
        DiscoverMovieState.loaded(
          results: tDiscoverMovie.results,
          isEndOfResult: false,
          isError: false,
          isLoadData: false,
          isLoading: false,
          errorMessage: '',
        ),
      ],
    );

    blocTest(
      'should emit [loading, error]',
      build: () {
        when(
          mockGetDiscoverMovieData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          ),
        ).thenAnswer((_) async => left(Failure.noInternetConnection()));
        return DiscoverMovieBloc(mockGetDiscoverMovieData);
      },
      act: (bloc) => bloc.add(
        DiscoverMovieEvent.getMovieData('now_playing', 1),
      ),
      wait: const Duration(milliseconds: 500),
      expect: [
        DiscoverMovieState.loading(),
        DiscoverMovieState.error(
          'Unable to process your request, please check your network connection.',
        )
      ],
    );

    blocTest(
      'should emit [loading,loaded] with end of result is true',
      build: () {
        when(
          mockGetDiscoverMovieData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          ),
        ).thenAnswer((_) async => Right(tDiscoverMovieEndOfResult));
        return DiscoverMovieBloc(mockGetDiscoverMovieData);
      },
      act: (bloc) => bloc.add(
        DiscoverMovieEvent.getMovieData('now_playing', 1),
      ),
      wait: const Duration(milliseconds: 500),
      expect: [
        DiscoverMovieState.loading(),
        DiscoverMovieState.loaded(
          results: tDiscoverMovieEndOfResult.results,
          isEndOfResult: true,
          isError: false,
          isLoadData: false,
          isLoading: false,
          errorMessage: '',
        ),
      ],
    );

    blocTest(
      'should emit [loaded] when current state is loaded',
      build: () {
        when(
          mockGetDiscoverMovieData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          ),
        ).thenAnswer((_) async => Right(tDiscoverMovie));
        return DiscoverMovieBloc(mockGetDiscoverMovieData);
      },
      act: (DiscoverMovieBloc bloc) async {
        final act = bloc
          ..emit(
            DiscoverMovieState.loaded(
              results: tDiscoverMovie.results,
              isEndOfResult: false,
              isError: false,
              isLoadData: false,
              isLoading: false,
              errorMessage: '',
            ),
          )
          ..add(DiscoverMovieEvent.getMovieData('now_playing', 1));
        return act;
      },
      wait: const Duration(milliseconds: 500),
      skip: 1,
      expect: [
        DiscoverMovieState.loaded(
          results: tDiscoverMovie.results,
          isEndOfResult: false,
          isError: false,
          isLoadData: true,
          isLoading: false,
          errorMessage: '',
        ),
        DiscoverMovieState.loaded(
          results: tDiscoverMovie.results + tDiscoverMovie.results,
          isEndOfResult: false,
          isError: false,
          isLoadData: false,
          isLoading: false,
          errorMessage: '',
        ),
      ],
    );

    blocTest(
      'should emit [loaded] with end of result == true when the current state is loaded',
      build: () {
        when(
          mockGetDiscoverMovieData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          ),
        ).thenAnswer((_) async => Right(tDiscoverMovieEndOfResult));
        return DiscoverMovieBloc(mockGetDiscoverMovieData);
      },
      act: (DiscoverMovieBloc bloc) async {
        final act = bloc
          ..emit(
            DiscoverMovieState.loaded(
              results: tDiscoverMovieEndOfResult.results,
              isEndOfResult: false,
              isError: false,
              isLoadData: false,
              isLoading: false,
              errorMessage: '',
            ),
          )
          ..add(DiscoverMovieEvent.getMovieData('now_playing', 1));
        return act;
      },
      wait: const Duration(milliseconds: 500),
      skip: 1,
      expect: [
        DiscoverMovieState.loaded(
          results: tDiscoverMovieEndOfResult.results,
          isEndOfResult: false,
          isError: false,
          isLoadData: true,
          isLoading: false,
          errorMessage: '',
        ),
        DiscoverMovieState.loaded(
          results: tDiscoverMovieEndOfResult.results +
              tDiscoverMovieEndOfResult.results,
          isEndOfResult: true,
          isError: false,
          isLoadData: false,
          isLoading: false,
          errorMessage: '',
        ),
      ],
    );

    blocTest(
      'should emit [loaded] with error message when the current state is loaded',
      build: () {
        when(
          mockGetDiscoverMovieData(
            type: anyNamed('type'),
            page: anyNamed('page'),
          ),
        ).thenAnswer((_) async => Left(Failure.noInternetConnection()));
        return DiscoverMovieBloc(mockGetDiscoverMovieData);
      },
      act: (DiscoverMovieBloc bloc) async {
        final act = bloc
          ..emit(
            DiscoverMovieState.loaded(
              results: tDiscoverMovie.results,
              isEndOfResult: false,
              isError: false,
              isLoadData: false,
              isLoading: false,
              errorMessage: '',
            ),
          )
          ..add(DiscoverMovieEvent.getMovieData('now_playing', 1));
        return act;
      },
      wait: const Duration(milliseconds: 500),
      skip: 1,
      expect: [
        DiscoverMovieState.loaded(
          results: tDiscoverMovie.results,
          isEndOfResult: false,
          isError: false,
          isLoadData: true,
          isLoading: false,
          errorMessage: '',
        ),
        DiscoverMovieState.loaded(
          results: tDiscoverMovie.results,
          isEndOfResult: false,
          isError: true,
          isLoadData: false,
          isLoading: false,
          errorMessage:
              'Unable to process your request, please check your network connection.',
        ),
      ],
    );
  });

  group(
    'Get Movie Data Retry Event',
    () {
      blocTest(
        'should emit [loaded]',
        build: () {
          when(
            mockGetDiscoverMovieData(
              type: anyNamed('type'),
              page: anyNamed('page'),
            ),
          ).thenAnswer((_) async => Right(tDiscoverMovie));
          return DiscoverMovieBloc(mockGetDiscoverMovieData);
        },
        act: (DiscoverMovieBloc bloc) {
          final act = bloc
            ..emit(
              DiscoverMovieState.loaded(
                results: tDiscoverMovie.results,
                isEndOfResult: false,
                isError: true,
                isLoadData: false,
                isLoading: false,
                errorMessage: '',
              ),
            )
            ..add(DiscoverMovieEvent.getMovieDataRetry('now_playing', 1));
          return act;
        },
        wait: const Duration(milliseconds: 500),
        skip: 1,
        expect: [
          DiscoverMovieState.loaded(
            results: tDiscoverMovie.results,
            isEndOfResult: false,
            isError: false,
            isLoadData: false,
            isLoading: true,
            errorMessage: '',
          ),
          DiscoverMovieState.loaded(
            results: tDiscoverMovie.results + tDiscoverMovie.results,
            isEndOfResult: false,
            isError: false,
            isLoadData: false,
            isLoading: false,
            errorMessage: '',
          ),
        ],
      );

      blocTest(
        'should emit [loaded] with end of result is true',
        build: () {
          when(
            mockGetDiscoverMovieData(
              type: anyNamed('type'),
              page: anyNamed('page'),
            ),
          ).thenAnswer((_) async => Right(tDiscoverMovieEndOfResult));
          return DiscoverMovieBloc(mockGetDiscoverMovieData);
        },
        act: (DiscoverMovieBloc bloc) {
          final act = bloc
            ..emit(
              DiscoverMovieState.loaded(
                results: tDiscoverMovie.results,
                isEndOfResult: false,
                isError: true,
                isLoadData: false,
                isLoading: false,
                errorMessage: '',
              ),
            )
            ..add(DiscoverMovieEvent.getMovieDataRetry('now_playing', 1));
          return act;
        },
        wait: const Duration(milliseconds: 500),
        skip: 1,
        expect: [
          DiscoverMovieState.loaded(
            results: tDiscoverMovie.results,
            isEndOfResult: false,
            isError: false,
            isLoadData: false,
            isLoading: true,
            errorMessage: '',
          ),
          DiscoverMovieState.loaded(
            results: tDiscoverMovie.results + tDiscoverMovieEndOfResult.results,
            isEndOfResult: true,
            isError: false,
            isLoadData: false,
            isLoading: false,
            errorMessage: '',
          ),
        ],
      );

      blocTest(
        'should emit [loaded] with isError == true',
        build: () {
          when(
            mockGetDiscoverMovieData(
              type: anyNamed('type'),
              page: anyNamed('page'),
            ),
          ).thenAnswer((_) async => left(Failure.noInternetConnection()));
          return DiscoverMovieBloc(mockGetDiscoverMovieData);
        },
        act: (DiscoverMovieBloc bloc) {
          final act = bloc
            ..emit(
              DiscoverMovieState.loaded(
                results: tDiscoverMovie.results,
                isEndOfResult: false,
                isError: true,
                isLoadData: false,
                isLoading: false,
                errorMessage: '',
              ),
            )
            ..add(DiscoverMovieEvent.getMovieDataRetry('now_playing', 1));
          return act;
        },
        wait: const Duration(milliseconds: 500),
        skip: 1,
        expect: [
          DiscoverMovieState.loaded(
            results: tDiscoverMovie.results,
            isEndOfResult: false,
            isError: false,
            isLoadData: false,
            isLoading: true,
            errorMessage: '',
          ),
          DiscoverMovieState.loaded(
            results: tDiscoverMovie.results,
            isEndOfResult: false,
            isError: true,
            isLoadData: false,
            isLoading: false,
            errorMessage:
                'Unable to process your request, please check your network connection.',
          ),
        ],
      );

      blocTest(
        'should emit [loading, loaded] when current state is error',
        build: () {
          when(
            mockGetDiscoverMovieData(
              type: anyNamed('type'),
              page: anyNamed('page'),
            ),
          ).thenAnswer((_) async => Right(tDiscoverMovie));
          return DiscoverMovieBloc(mockGetDiscoverMovieData);
        },
        act: (DiscoverMovieBloc bloc) async {
          final act = bloc
            ..emit(
              DiscoverMovieState.error(
                'error',
              ),
            )
            ..add(DiscoverMovieEvent.getMovieData('now_playing', 1));
          return act;
        },
        wait: const Duration(milliseconds: 500),
        skip: 1,
        expect: [
          DiscoverMovieState.loading(),
          DiscoverMovieState.loaded(
            results: tDiscoverMovie.results,
            isEndOfResult: false,
            isError: false,
            isLoadData: false,
            isLoading: false,
            errorMessage: '',
          ),
        ],
      );

      blocTest(
        'should emit [loading, error] when current state is error',
        build: () {
          when(
            mockGetDiscoverMovieData(
              type: anyNamed('type'),
              page: anyNamed('page'),
            ),
          ).thenAnswer((_) async => left(Failure.noInternetConnection()));
          return DiscoverMovieBloc(mockGetDiscoverMovieData);
        },
        act: (DiscoverMovieBloc bloc) async {
          final act = bloc
            ..emit(
              DiscoverMovieState.error(
                'error',
              ),
            )
            ..add(DiscoverMovieEvent.getMovieData('now_playing', 1));
          return act;
        },
        wait: const Duration(milliseconds: 500),
        skip: 1,
        expect: [
          DiscoverMovieState.loading(),
          DiscoverMovieState.error(
            'Unable to process your request, please check your network connection.',
          ),
        ],
      );
    },
  );
}
