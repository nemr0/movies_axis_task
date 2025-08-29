import 'package:equatable/equatable.dart';

part 'known_for.dart';
part 'gender.dart';

class Person extends Equatable{
  final int id;
  final String name;
  final String profilePath;
  final bool adult;
  final Gender gender;
  final double popularity;
  final String knownForDepartment;
  final List<KnownFor> allKnownFor;
  const Person( {
    required this.id,
    required this.name,
    required this.profilePath,
    required this.adult,
    required this.gender,
    required this.popularity,
    required this.knownForDepartment,required this.allKnownFor,
  });

  @override
  List<Object?> get props => [
        id,
        name,
        profilePath,
        adult,
        knownForDepartment,
        allKnownFor,
        gender,
        popularity,
  ];
}

