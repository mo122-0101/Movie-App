import 'package:dartz/dartz.dart';
import 'package:movie/core/error/exceptions.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies_module/data/datasource/movie_remote_data_source.dart';
import 'package:movie/movies_module/domain/entities/movie.dart';
import 'package:movie/movies_module/domain/entities/movie_detail.dart';
import 'package:movie/movies_module/domain/entities/recommendation.dart';
import 'package:movie/movies_module/domain/repository/base_movies_repository.dart';
import 'package:movie/movies_module/domain/use_cases/get_movie_details_use_case.dart';
import 'package:movie/movies_module/domain/use_cases/get_recommendation_use_case.dart';

class MoviesRepository extends BaseMoviesRepository{
  final BaseMovieRemoteDataSource baseMovieRemoteDataSource;
  MoviesRepository(this.baseMovieRemoteDataSource);

  @override
  Future<Either<Failure,List<Movie>>>getNowPlayingMovies() async{
  final result = await baseMovieRemoteDataSource.getNowPlayingMovies();
 try {
   return Right(result);
 } on ServerException catch (failure){
   return Left(ServerFailure(failure.errorMessageModel.statusMessage));
 }
  }

  @override
  Future<Either<Failure,List<Movie>>>getPopularMovies()  async{
    final result = await baseMovieRemoteDataSource.getPopularMovies();
    try {
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
  @override
  Future<Either<Failure,List<Movie>>> getTopRatedMovies() async{
    final result = await baseMovieRemoteDataSource.getTopRatedMovies();
    try {
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, MovieDetail>> getMovieDetails(MovieDetailsParameters parameters)async{
    final result = await baseMovieRemoteDataSource.getMovieDetails(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Recommendation>>> getRecommendation(
      RecommendationParameters parameters) async {
    final result = await baseMovieRemoteDataSource.getRecommendation(parameters);
    try {
      return Right(result);
    } on ServerException catch (failure){
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
  }}}
