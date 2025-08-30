import 'package:dartz/dartz.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/features/people/domain/usecase/save_person_photo_use_case.dart';

import '../entities/paginated_people.dart';
import '../entities/person_photo.dart';

abstract class PeopleRepository {
  Future<Either<Failure,PaginatedPeople>> listPopularPeople(int page,String language);
  Future<Either<Failure,PersonPhotos>> getPersonPhotos(int personId);
  Future<Either<Failure,void>> savePersonPhoto(SavePersonPhotoParams params);
}
