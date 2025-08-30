import 'package:equatable/equatable.dart';
typedef PersonPhotos = (int id, List<PersonPhoto>);
class PersonPhoto extends Equatable {
  final double aspectRatio;
  final String filePath;
  final double voteAverage;
  final int voteCount;

  const PersonPhoto({
    required this.aspectRatio,
    required this.filePath,
    required this.voteAverage,
    required this.voteCount,
  });

  @override
  List<Object?> get props => [
        aspectRatio,
        filePath,
        voteAverage,
        voteCount,
      ];
}