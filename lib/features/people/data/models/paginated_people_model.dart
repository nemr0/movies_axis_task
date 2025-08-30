import 'package:movies/features/people/data/models/person_model.dart';
import 'package:movies/features/people/domain/entities/paginated_people.dart';

import '../../domain/entities/person.dart';

extension PaginatedPeopleModel on PaginatedPeople{
  static PaginatedPeople fromJson(Map<String,dynamic> json){
    return PaginatedPeople(
      page: json['page'],
      people: List<Person>.from(json['results'].map((x) => PersonModel.fromJson(x))),
      totalPages: json['total_pages'],
      totalResults: json['total_results'],
    );
  }
}