import 'package:movie/movies_module/data/models/genres_model.dart';
import 'package:movie/movies_module/domain/entities/genres.dart';
import 'package:movie/movies_module/domain/entities/movie_detail.dart';

class MovieDetailsModel extends MovieDetail {
  const MovieDetailsModel(
      {required super.backdropPath,
      required super.id,
      required super.overview,
      super.releaseDate,
      required super.runtime,
      required super.title,
      required super.genres,
      required super.voteAverage});
  factory MovieDetailsModel.fromJson(Map<String,dynamic> json)=>
      MovieDetailsModel(
          backdropPath:json["backdrop_path"],
          id: json["id"],
          overview:json["overview"],
          releaseDate:json[" release_date"]?? "",
          runtime:json[" runtime"]?? 55,
          title: json["title"],
          genres: List<Genres>.from(json["genres"].map((x)=> GenresModel.fromJson(x))),
          voteAverage: json["vote_average"].toDouble(),
      );
}
