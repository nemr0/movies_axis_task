
import 'package:movies/features/people/domain/entities/person.dart';
part 'gender_model.dart';
part 'known_for_model.dart';
extension PersonModel on Person{
 static Person fromJson(Map<String,dynamic> json){
    return Person(
      id: json['id'],
      name: json['name'],
      adult: json['adult'] ?? true,
      allKnownFor: (json['known_for'] as List).map((e) => KnownForModel.fromJson(e)).toList(),
      profilePath: json['profile_path']??'',
      knownForDepartment: json['known_for_department']??'',
      popularity: (json['popularity'] as num).toDouble(), gender: GenderModel.fromJson(json['gender'] as int),

    );
  }
}