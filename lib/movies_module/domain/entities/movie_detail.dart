import 'package:equatable/equatable.dart';

import 'genres.dart';

class MovieDetail extends Equatable {
  final String backdropPath;
  final int id;
  final String overview;
  final String? releaseDate;
  final List<Genres> genres;
  final int? runtime;
  final String title;
  final double voteAverage;

  const MovieDetail(
      {required this.backdropPath,
      required this.id,
      required this.overview,
      this.releaseDate,
      this.runtime,
      required this.title,
      required this.genres,
      required this.voteAverage});

  @override
  List<Object?> get props => [
        backdropPath,
        id,
        overview,
        genres,
        releaseDate,
        runtime,
        title,
        voteAverage,
      ];
}
