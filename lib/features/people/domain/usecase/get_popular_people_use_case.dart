import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/core/usecases/usecase_abst.dart';

import '../entities/paginated_people.dart';
import '../repositories/people_repository.dart';

class GetPopularPeopleUseCase implements UseCase<PaginatedPeople,GetPopularPeopleParams>{

final PeopleRepository _peopleRepository;


GetPopularPeopleUseCase(this._peopleRepository);

  @override
  Future<Either<Failure, PaginatedPeople>> call(params) {
    return  _peopleRepository.listPopularPeople(params.page,params.language);
  }


}

class GetPopularPeopleParams extends Equatable {
  final int page;
  final String language;
  const GetPopularPeopleParams( {this.page = 1,this.language = 'en_US',});

  @override
  List<Object?> get props => [page, language];
}