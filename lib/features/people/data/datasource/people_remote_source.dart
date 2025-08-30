import 'package:dartz/dartz.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/core/exceptions/parse_failure.dart';
import 'package:movies/core/network/apis.dart';
import 'package:movies/core/network/network_service.dart';
import 'package:movies/features/people/data/models/paginated_people_model.dart';
import 'package:movies/features/people/domain/entities/paginated_people.dart';
import 'package:injectable/injectable.dart';

abstract class PeopleRemoteSource {
  Future<Either<Failure, PaginatedPeople>> listPopularPeople(int page,String language);
}
@LazySingleton(as: PeopleRemoteSource)
class PeopleRemoteSourceImpl implements PeopleRemoteSource {
  final NetworkService _networkService;

  PeopleRemoteSourceImpl(this._networkService);

  @override
  Future<Either<Failure, PaginatedPeople>> listPopularPeople(int page,String language) async {
    final res = await _networkService.get(
      path: APIs.popularPeople,
      queryParameters: {
        'page': page,
        'language': language,
      },
    );
    return res.fold((f) => Left(f), (r) {
      try {
        final PaginatedPeople paginatedPeople = PaginatedPeopleModel.fromJson(r.data);

        return Right(paginatedPeople);
      } catch (e) {
        return Left(ParseFailure());
      }
    });
  }
}
