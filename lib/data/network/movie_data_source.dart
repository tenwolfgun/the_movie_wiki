import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:the_movie_wiki/data/model/genre/genre_result.dart';
import 'package:the_movie_wiki/data/model/movie/detail/detail_movie_result.dart';
import 'package:the_movie_wiki/data/model/movie/now_playing/now_playing_result.dart';
import 'package:the_movie_wiki/data/model/movie/popular/popular.dart';
import 'package:the_movie_wiki/data/model/movie/top_rated/top_rated_result.dart';
import 'package:the_movie_wiki/data/model/movie/trending/trending_movie_result.dart';
import 'package:the_movie_wiki/data/model/people/trending/trending_people_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/airing_today/airing_today_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/detail/detail_tv_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/on_air/on_air_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/popular/popular_tv_show_result.dart';
import 'package:the_movie_wiki/data/model/movie/upcoming/upcoming_result.dart';
import 'package:the_movie_wiki/data/model/tv_show/top_rated/top_rated_result_tv_show.dart';
import 'package:the_movie_wiki/data/model/tv_show/trending/trending_tv_show_result.dart';

import 'api_key.dart';

// Movie data source
class MovieDataSource {
  final http.Client client;

  final String _popularMovieBaseUrl =
      'https://api.themoviedb.org/3/movie/popular?api_key=$API_KEY&language=en-US';

  final String _nowPlayingMovieBaseUrl =
      'https://api.themoviedb.org/3/movie/now_playing?api_key=$API_KEY&language=en-US';

  final String _popularTvShowBaseUrl =
      'https://api.themoviedb.org/3/tv/popular?api_key=$API_KEY&language=en-US';

  final String _genreBaseUrl = 'https://api.themoviedb.org/3/genre/';

  final String _upcomingMoviesBaseUrl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=$API_KEY&language=en-US';

  final String _topRatedMoviesBaseUrl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=$API_KEY&language=en-US';

  final String _airingTodayBaseUrl =
      'https://api.themoviedb.org/3/tv/airing_today?api_key=$API_KEY&language=en-US';

  final String _onAirResultBaseUrl =
      'https://api.themoviedb.org/3/tv/on_the_air?api_key=$API_KEY&language=en-US';

  final String _topRatedTvShowBaseUrl =
      'https://api.themoviedb.org/3/tv/top_rated?api_key=$API_KEY&language=en-US';

  final String _trendingMoviesBaseUrl =
      'https://api.themoviedb.org/3/trending/movie/';

  final String _trendingTvBaseUrl = 'https://api.themoviedb.org/3/trending/tv/';

  final String _trendingPeopleBaseUrl =
      'https://api.themoviedb.org/3/trending/person/';

  final String _movieDetailBaseUrl = 'http://api.themoviedb.org/3/movie/';

  final String _tvDetailBaseUrl = 'http://api.themoviedb.org/3/tv/';

  final String _discoverMovieBaseUrl =
      'https://api.themoviedb.org/3/discover/movie?api_key=$API_KEY&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false';

  final String _discoverTvBaseUrl =
      'https://api.themoviedb.org/3/discover/tv?api_key=$API_KEY&language=en-US&sort_by=popularity.desc&include_adult=false&include_video=false';

  final String _searchMoviesUrl = 'https://api.themoviedb.org/3/search/movie?';

  final String _searchTvUrl = 'https://api.themoviedb.org/3/search/tv?';

  MovieDataSource(this.client);

  Future<PopularTvShowResult> searchTvShow({
    String searchQuery,
    int page = 1,
  }) async {
    try {
      final _urlRaw = _searchTvUrl +
          'api_key=$API_KEY' +
          '&include_adult=false' +
          '&query=$searchQuery' +
          '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return PopularTvShowResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<PopularResult> searchMovies({
    String searchQuery,
    int page,
  }) async {
    try {
      final _urlRaw = _searchMoviesUrl +
          'api_key=$API_KEY' +
          '&include_adult=false' +
          '&query=$searchQuery' +
          '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return PopularResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<PopularResult> popularMoviesByGenre({
    String genreId,
    int page = 1,
  }) async {
    try {
      final _urlRaw =
          _discoverMovieBaseUrl + '&with_genres=$genreId' + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return PopularResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<PopularTvShowResult> popularTvShowByGenre({
    String genreId,
    int page = 1,
  }) async {
    try {
      final _urlRaw =
          _discoverTvBaseUrl + '&with_genres=$genreId' + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return PopularTvShowResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<PopularResult> popularMovies({
    int page = 1,
  }) async {
    try {
      final _urlRaw = _popularMovieBaseUrl + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return PopularResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<NowPlayingResult> nowPlayingMovies({
    int page = 1,
  }) async {
    try {
      final _urlRaw = _nowPlayingMovieBaseUrl + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return NowPlayingResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<PopularTvShowResult> popularTvShow({int page = 1}) async {
    try {
      final _urlRaw = _popularTvShowBaseUrl + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return PopularTvShowResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<GenreResult> genreList({String genreType}) async {
    try {
      final _urlRaw = _genreBaseUrl +
          '$genreType' +
          '/list?api_key=$API_KEY&language=en-US';

      final _response = await client.get(_urlRaw);

      if (_response.statusCode == 200) {
        return GenreResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<UpcomingResult> upcomingMovies() async {
    try {
      final _response = await client.get(_upcomingMoviesBaseUrl);

      if (_response.statusCode == 200) {
        return UpcomingResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<TopRatedResult> topRatedMovies({int page = 1}) async {
    try {
      final _urlRaw = _topRatedMoviesBaseUrl + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return TopRatedResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<AiringTodayResult> airingToday({int page = 1}) async {
    try {
      final _urlRaw = _airingTodayBaseUrl + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return AiringTodayResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<OnAirResult> onAir({int page = 1}) async {
    try {
      final _urlRaw = _onAirResultBaseUrl + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return OnAirResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<TopRatedResultTvShow> topRatedTvShow({int page = 1}) async {
    try {
      final _urlRaw = _topRatedTvShowBaseUrl + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);
      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return TopRatedResultTvShow.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<TrendingMovieResult> trendingMovies(
      {int page = 1, String time}) async {
    try {
      final _urlRaw = _trendingMoviesBaseUrl +
          '$time' +
          '?api_key=$API_KEY' +
          '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);

      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return TrendingMovieResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<TrendingTvShowResult> trendingTvShow(
      {int page = 1, String time}) async {
    try {
      final _urlRaw =
          _trendingTvBaseUrl + '$time' + '?api_key=$API_KEY' + '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);

      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return TrendingTvShowResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<TrendingPeopleResult> trendingPeople(
      {int page = 1, String time}) async {
    try {
      final _urlRaw = _trendingPeopleBaseUrl +
          '$time' +
          '?api_key=$API_KEY' +
          '&page=$page';

      final _urlEncoded = Uri.encodeFull(_urlRaw);

      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return TrendingPeopleResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } on SocketException catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<DetailMovieResult> movieDetail({int id}) async {
    try {
      final _urlRaw = _movieDetailBaseUrl +
          '$id' +
          '?api_key=$API_KEY&append_to_response=videos,images,similar,credits,reviews';

      final _urlEncoded = Uri.encodeFull(_urlRaw);

      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return DetailMovieResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } catch (e) {
      print(e.message);
      return null;
    }
  }

  Future<DetailTvResult> tvDetail({int id}) async {
    try {
      final _urlRaw = _tvDetailBaseUrl +
          '$id' +
          '?api_key=$API_KEY&append_to_response=videos,images,similar,credits,reviews';
      final _urlEncoded = Uri.encodeFull(_urlRaw);

      final _response = await client.get(_urlEncoded);

      if (_response.statusCode == 200) {
        return DetailTvResult.fromJson(_response.body);
      } else {
        throw ResultError(jsonDecode(_response.body)['status_message']);
      }
    } catch (e) {
      print(e);
      return null;
    }
  }
}
