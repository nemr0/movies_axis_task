part of 'get_popular_people_cubit.dart';

@freezed
class GetPopularPeopleState with _$GetPopularPeopleState{

  const factory GetPopularPeopleState.loading() = _GetPopularPeopleLoading;
  const factory GetPopularPeopleState.paginating(PaginatedPeople oldPaginatedPeople) = _GetPopularPeoplePaginating;
  const factory GetPopularPeopleState.success(PaginatedPeople paginatedPeople) = _GetPopularPeopleSuccess;
  const factory GetPopularPeopleState.failed(Failure failure) = _GetPopularPeopleFailed;
  const factory GetPopularPeopleState.paginationFailed(PaginatedPeople paginatedPeople,Failure failure) = _GetPopularPeoplePaginationFailed;

}

