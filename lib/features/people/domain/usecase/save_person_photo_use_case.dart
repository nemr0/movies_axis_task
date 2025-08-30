
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/core/usecases/usecase_abst.dart';
import 'package:movies/features/people/domain/repositories/people_repository.dart';
@lazySingleton
class SavePersonPhotoUseCase implements UseCase<void, SavePersonPhotoParams> {
  final PeopleRepository repository;

  SavePersonPhotoUseCase(this.repository);

  @override
  Future<Either<Failure, void>> call(SavePersonPhotoParams params) {
   return repository.savePersonPhoto(params);
  }


}

class SavePersonPhotoParams extends Equatable{
  final int id;
  final String name;
  final PhotoOf photoOf;
  final String photoPath;
  final int photoId;

  const SavePersonPhotoParams( { required this.id, required this.name, required this.photoOf,required this.photoPath, required this.photoId});

  @override
  List<Object?> get props =>[photoPath,photoId,id,name,photoOf];

}
enum PhotoOf{
  profile,knownFor
}