import 'package:equatable/equatable.dart';
import 'package:movies/features/people/domain/entities/person.dart';

class PaginatedPeople extends Equatable{
  final int page;
  final List<Person> people;
  final int totalPages;
  final int totalResults;

  const PaginatedPeople({
    required this.page,
    required this.people,
    required this.totalPages,
    required this.totalResults,
  });

  @override
  List<Object?> get props => [
    page,
    people,
    totalPages,
    totalResults,
  ];
}