import 'package:dartz/dartz.dart';

import 'package:movies/core/exceptions/failure.dart';


import '../../domain/entities/paginated_people.dart';
import '../datasource/people_remote_source.dart';
import '../../domain/repositories/people_repository.dart';

class PeopleRepositoryImpl implements PeopleRepository{

final PeopleRemoteSource remoteSource;

PeopleRepositoryImpl({required this.remoteSource});

  @override
  Future<Either<Failure, PaginatedPeople>> listPopularPeople(int page,String language) {
    return remoteSource.listPopularPeople(page,language);
  }


}