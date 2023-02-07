import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movie/core/base_use_case/base_use_case.dart';
import 'package:movie/core/error/failure.dart';
import 'package:movie/movies_module/domain/entities/recommendation.dart';
import 'package:movie/movies_module/domain/repository/base_movies_repository.dart';

class GetRecommendationUseCase
    extends BaseUseCase<List<Recommendation>, RecommendationParameters>{
  final BaseMoviesRepository baseMoviesRepository;
 GetRecommendationUseCase(this.baseMoviesRepository);
  @override
  Future<Either<Failure,List<Recommendation>>> call(parameters) async{
 return  await baseMoviesRepository.getRecommendation(parameters);
  }


}
class RecommendationParameters extends Equatable{
  final int id;
  const RecommendationParameters(this.id);

  @override

  List<Object?> get props => [id];
}