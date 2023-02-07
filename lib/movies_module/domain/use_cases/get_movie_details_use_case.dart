import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie/core/base_use_case/base_use_case.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies_module/domain/entities/movie_detail.dart';
import 'package:movie/movies_module/domain/repository/base_movies_repository.dart';

class GetMovieDetailsUseCase extends BaseUseCase<MovieDetail,MovieDetailsParameters >{
  final BaseMoviesRepository baseMoviesRepository;
  GetMovieDetailsUseCase(this.baseMoviesRepository);

  @override
  Future<Either<Failure, MovieDetail>> call(MovieDetailsParameters parameters) async{
  return await baseMoviesRepository.getMovieDetails(parameters);


  }

}
class MovieDetailsParameters extends Equatable {
  final int movieId;
  const MovieDetailsParameters({ required this.movieId});


  @override
  // TODO: implement props
  List<Object?> get props => [movieId];}