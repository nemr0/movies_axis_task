import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/features/people/domain/entities/person_photo.dart';

import '../../../../core/usecases/usecase_abst.dart';
import '../repositories/people_repository.dart';
@lazySingleton
class GetPersonPhotosUseCase  implements UseCase<PersonPhotos,int>{
  final PeopleRepository _peopleRepository;

  GetPersonPhotosUseCase(this._peopleRepository);
  @override
  Future<Either<Failure, PersonPhotos>> call(int params) {
   return _peopleRepository.getPersonPhotos(params);
  }
}