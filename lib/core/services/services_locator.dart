import 'package:get_it/get_it.dart';
import 'package:movie/movies_module/data/datasource/movie_remote_data_source.dart';
import 'package:movie/movies_module/data/repository/movies_repository.dart';
import 'package:movie/movies_module/domain/repository/base_movies_repository.dart';
import 'package:movie/movies_module/presentation/controller/movies_bloc.dart';

import '../../movies_module/domain/use_cases/get_movie_details_use_case.dart';
import '../../movies_module/domain/use_cases/get_now_playing_movies_use_case.dart';
import '../../movies_module/domain/use_cases/get_popular_movies_use_case.dart';
import '../../movies_module/domain/use_cases/get_recommendation_use_case.dart';
import '../../movies_module/domain/use_cases/get_top_rated_movies_use_case.dart';
import '../../movies_module/presentation/controller/movie_details_bloc.dart';

final sl = GetIt.instance;
class ServicesLocator {
  void init(){
    /// Bloc
     sl.registerFactory(() => MoviesBloc(sl(),sl(),sl()));
     sl.registerFactory(() => MovieDetailsBloc(sl(),sl()));
    ///  USE CASES
    sl.registerLazySingleton(() => GetNowPlayingMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetPopularMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetTopRatedMoviesUseCase(sl()));
    sl.registerLazySingleton(() => GetMovieDetailsUseCase(sl()));
     sl.registerLazySingleton(() => GetRecommendationUseCase(sl()));
    /// REPOSITORY
    sl.registerLazySingleton<BaseMoviesRepository>(
            () =>MoviesRepository( sl()));

    /// DATA SOURCE
    sl.registerLazySingleton<BaseMovieRemoteDataSource>(
            () => MovieRemoteDataSource() );
  }
}