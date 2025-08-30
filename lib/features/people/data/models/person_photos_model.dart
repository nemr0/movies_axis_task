import 'package:movies/features/people/data/models/person_photo_model.dart';
import 'package:movies/features/people/domain/entities/person_photo.dart';

extension PersonPhotosModel on PersonPhotos{
  static PersonPhotos fromJson(Map<String, dynamic> json) {
    return (
      json['id'] as int,
       (json['profiles'] as List<dynamic>)
          .map((e) => PersonPhotoModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

}