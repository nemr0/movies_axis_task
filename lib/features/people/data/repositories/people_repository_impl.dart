
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/core/extensions/either_extension.dart';
import 'package:movies/features/people/data/datasource/people_local_source.dart';
import 'package:movies/features/people/domain/entities/person_photo.dart';
import 'package:movies/features/people/domain/usecase/save_person_photo_use_case.dart';


import '../../../../core/exceptions/cache_failure.dart';
import '../../domain/entities/paginated_people.dart';
import '../datasource/people_remote_source.dart';
import '../../domain/repositories/people_repository.dart';
@LazySingleton(as: PeopleRepository)
class PeopleRepositoryImpl implements PeopleRepository{

final PeopleRemoteSource _remoteSource;
final PeopleLocalSource _localSource;
PeopleRepositoryImpl(this._localSource,  this._remoteSource);

  @override
  Future<Either<Failure, PaginatedPeople>> listPopularPeople(int page,String language) {
    return _remoteSource.listPopularPeople(page,language);
  }

  @override
  Future<Either<Failure, PersonPhotos>> getPersonPhotos(int personId) {
    return _remoteSource.getPersonPhotos(personId);
  }

  @override
  Future<Either<Failure, void>> savePersonPhoto(SavePhotoParams params) async {
    final mimeType = params.photoPath.split('.').last;
      final fromLocal = await _localSource.getSinglePersonPhoto(params.photoPath);
      if(fromLocal.isLeft() ){
        final fromRemote = await _remoteSource.getSinglePersonPhoto(params.photoPath);
        if(fromRemote.isLeft()){
          return Left((fromRemote.asLeft));
        }
        return _savePhoto(fromRemote.asRight, params.name, params.photoId,mimeType );
      }
      return _savePhoto(fromLocal.asRight, params.name, params.photoId,mimeType );

  }

  Future<Either<Failure, void>> _savePhoto(List<int> photo, String name, int photoId,String mimeType) async {
    try{
      final bytes =Uint8List.fromList(photo);

        await FilePicker.platform.saveFile(
            fileName: '${name}-$photoId.$mimeType',
            type: FileType.image,
            allowedExtensions: [mimeType.split('/').last],
            bytes: bytes
        );

      return Right(null);
    } catch(e){
      return Left(CacheFailure());
    }
  }


}