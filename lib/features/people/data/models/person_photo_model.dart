import 'package:movies/features/people/domain/entities/person_photo.dart';

extension PersonPhotoModel on PersonPhoto{
  static PersonPhoto fromJson(Map<String, dynamic> json) {
    return PersonPhoto(
      aspectRatio: (json['aspect_ratio'] as num).toDouble(),
      filePath: json['file_path'] as String,
      voteAverage: (json['vote_average'] as num).toDouble(),
      voteCount: json['vote_count'] as int,
    );
  }
}