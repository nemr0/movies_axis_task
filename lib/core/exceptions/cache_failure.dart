
import 'failure.dart';

class CacheFailure implements Failure{

  @override
  final StackTrace? stackTrace;
  const CacheFailure({
    this.stackTrace,
  });
  @override
  List<Object?> get props => [stackTrace];



  @override
  bool? get stringify => true;

}