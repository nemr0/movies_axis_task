import 'package:dartz/dartz.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/core/exceptions/parse_failure.dart';
import 'package:movies/core/exceptions/server_failure.dart';
import 'package:movies/core/extensions/string_extension.dart';
import 'package:movies/core/network/apis.dart';
import 'package:movies/core/network/network_service.dart';
import 'package:movies/features/people/data/models/paginated_people_model.dart';
import 'package:movies/features/people/data/models/person_photos_model.dart';
import 'package:movies/features/people/domain/entities/paginated_people.dart';
import 'package:injectable/injectable.dart';

import '../../domain/entities/person_photo.dart';

abstract class PeopleRemoteSource {
  Future<Either<Failure, PaginatedPeople>> listPopularPeople(
    int page,
    String language,
  );

  Future<Either<Failure, PersonPhotos>> getPersonPhotos(int personId);
  Future<Either<Failure, List<int>>> getSinglePersonPhoto(String photoPath);

}

@LazySingleton(as: PeopleRemoteSource)
class PeopleRemoteSourceImpl implements PeopleRemoteSource {
  final NetworkService _networkService;

  PeopleRemoteSourceImpl(this._networkService);

  @override
  Future<Either<Failure, PaginatedPeople>> listPopularPeople(
    int page,
    String language,
  ) async {
    final res = await _networkService.get(
      path: APIs.popularPeople,
      queryParameters: {'page': page, 'language': language},
    );
    return res.fold((f) => Left(f), (r) {
      try {
        final PaginatedPeople paginatedPeople = PaginatedPeopleModel.fromJson(
          r.data,
        );

        return Right(paginatedPeople);
      } catch (e) {
        return Left(ParseFailure());
      }
    });
  }

  @override
  Future<Either<Failure, PersonPhotos>> getPersonPhotos(int personId) async {
    final res = await _networkService.get(path: APIs.personImages(personId));
    return res.fold((failure) => Left(failure), (data) {
      try {
        final PersonPhotos personPhotos = PersonPhotosModel.fromJson(data.data);
        return Right(personPhotos);
      } catch (e) {
        return Left(ParseFailure());
      }
    });
  }

  @override
  Future<Either<Failure, List<int>>> getSinglePersonPhoto(String photoPath) async {
    try{
      final res = await DefaultCacheManager().getSingleFile(photoPath.fullImagePath);
      return Right(res.readAsBytesSync());
    } catch(e){
      return Left(ServerFailure());
    }
  }
}
