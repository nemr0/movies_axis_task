import 'package:dartz/dartz.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/extensions/string_extension.dart';

import '../../../../core/exceptions/cache_failure.dart';
import '../../../../core/exceptions/failure.dart';

abstract class PeopleLocalSource {
  Future<Either<Failure, List<int>>> getSinglePersonPhoto(String photoPath);
}
@LazySingleton(as: PeopleLocalSource)
class PeopleLocalSourceImpl implements PeopleLocalSource {
  @override
  Future<Either<Failure, List<int>>> getSinglePersonPhoto(String photoPath) async {
    try{
      final file = await DefaultCacheManager().getFileFromCache(photoPath.fullImagePath);
      final data = file?.file.readAsBytesSync();
      if(data == null){
        return Left(CacheFailure());
      }
      return Right(data);
    }catch(e){
      return Left(CacheFailure());
    }

  }

}