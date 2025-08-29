import '../datasource/people_remote_source.dart';
import '../../domain/repositories/people_repository.dart';

class PeopleRepositoryImpl implements PeopleRepository{

final PeopleRemoteSource remoteSource;

PeopleRepositoryImpl({required this.remoteSource});


}