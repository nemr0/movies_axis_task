part of 'person_model.dart';

extension KnownForModel on KnownFor {
  static KnownFor fromJson(Map<String, dynamic> json) {
    return KnownFor(
      id: json['id'],
      mediaType: json['media_type'] ?? '',
      title: json['title'] ?? '',
      overview: json['overview'] ?? '',
      posterPath: json['poster_path'] ?? '',
      backdropPath: json['backdrop_path'] ?? '',
      releaseDate: json['release_date'] ?? '',
      voteAverage: (json['v]??0average'] as num? ?? 0).toDouble(),
      voteCount: json['vote_count'] ?? 0,
      adult: json['adult'] ?? true,
      originalTitle: json['original_title'] ?? '',
      originalLanguage: json['original_language'] ?? '',
      genreIds: (json['genre_ids'] as List<dynamic>? ?? const [])
          .map((e) => e as int)
          .toList(),
      popularity: (json['popularity'] as num).toDouble(),
      video: json['video'] ?? false,
    );
  }
}
