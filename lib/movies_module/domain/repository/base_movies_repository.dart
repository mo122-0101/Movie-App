
// here we make contracts التعاقد مع api انا عاوز ايه من هناك
import 'package:dartz/dartz.dart';
import 'package:movie/movies_module/domain/entities/movie.dart';
import 'package:movie/movies_module/domain/entities/movie_detail.dart';
import 'package:movie/movies_module/domain/use_cases/get_movie_details_use_case.dart';

import '../../../core/error/failure.dart';
import '../entities/recommendation.dart';
import '../use_cases/get_recommendation_use_case.dart';

abstract class BaseMoviesRepository{
  Future<Either<Failure,List<Movie>>>getNowPlayingMovies();
  Future<Either<Failure,List<Movie>>>getPopularMovies();
  Future<Either<Failure,List<Movie>>>getTopRatedMovies();
  Future<Either<Failure,MovieDetail>>getMovieDetails(MovieDetailsParameters parameters);
  Future<Either<Failure,List<Recommendation>>>getRecommendation(
      RecommendationParameters parameters
      );
}
