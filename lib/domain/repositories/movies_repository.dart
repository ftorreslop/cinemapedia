import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MovieRepositoy {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
