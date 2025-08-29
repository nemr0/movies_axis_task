import 'package:dartz/dartz.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/core/usecases/usecase_abst.dart';

import '../repositories/people_repository.dart';

class PeopleUseCase implements UseCase{

final PeopleRepository _peopleRepository;


PeopleUseCase(this._peopleRepository);

  @override
  Future<Either<Failure, dynamic>> call(params) {
    // TODO: implement call
    throw UnimplementedError();
  }


}