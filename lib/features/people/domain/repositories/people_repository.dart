import 'package:dartz/dartz.dart';
import 'package:movies/core/exceptions/failure.dart';

import '../entities/paginated_people.dart';

abstract class PeopleRepository {
  Future<Either<Failure,PaginatedPeople>> listPopularPeople(int page,String language);
}
