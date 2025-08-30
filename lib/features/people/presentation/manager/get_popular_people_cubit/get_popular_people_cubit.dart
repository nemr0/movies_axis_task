import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/core/service_locator/service_locator.dart';
import 'package:movies/features/people/domain/entities/paginated_people.dart';
import 'package:movies/features/people/domain/usecase/get_popular_people_use_case.dart';

part 'get_popular_people_cubit.freezed.dart';

part 'get_popular_people_state.dart';

/// A [Cubit] responsible for loading and paginating popular people data.
///
/// Utilizes [GetPopularPeopleUseCase] to fetch pages of popular people
/// and manages loading, success, and failure states accordingly.
@injectable
class GetPopularPeopleCubit extends Cubit<GetPopularPeopleState> {
  /// Creates an instance of [GetPopularPeopleCubit] with the given use case.
  ///
  /// The initial state is [GetPopularPeopleState.loading].
  GetPopularPeopleCubit(this._getPopularPeopleUseCase)
    : super(GetPopularPeopleState.loading());
  final GetPopularPeopleUseCase _getPopularPeopleUseCase;

  /// A singleton-like accessor via the service locator.
  static GetPopularPeopleCubit get instance =>
      ServiceLocator.get<GetPopularPeopleCubit>();

  /// Fetches popular people data.
  ///
  /// - If already in a loading or paginating state, this call will return immediately.
  /// - Emits [GetPopularPeopleState.loading] when fetching the first page.
  /// - Emits [GetPopularPeopleState.paginating] when fetching subsequent pages.
  /// - On success:
  ///   - Emits [GetPopularPeopleState.success] with new or merged data.
  /// - On failure:
  ///   - Emits [GetPopularPeopleState.failed] for initial load errors.
  ///   - Emits [GetPopularPeopleState.paginationFailed] for pagination errors.
  Future<void> call() async {
    /// if loading or paginating return
    if (state is _GetPopularPeoplePaginating) {
      return;
    }

    /// get current paginated people if exists
    final currentPaginatedPeople = state.maybeMap(
      orElse: () => null,
      success: (s) => s.paginatedPeople,
      paginating: (p) => p.oldPaginatedPeople,
      paginationFailed: (pf) => pf.paginatedPeople,

    );
    final currentPage = currentPaginatedPeople?.page;

    /// emit loading or paginating state
    emit(
      currentPaginatedPeople == null
          ? GetPopularPeopleState.loading()
          : GetPopularPeopleState.paginating(currentPaginatedPeople),
    );
    await Future.delayed(Duration(seconds: 1));
    /// call use case
    final result = await _getPopularPeopleUseCase.call(
      GetPopularPeopleParams(page: currentPage == null ? 1 : currentPage + 1),
    );
    result.fold(
      (left) {
        /// emit failed or pagination failed state
        if (currentPaginatedPeople == null) {
          emit(GetPopularPeopleState.failed(left));
        } else {
          emit(
            GetPopularPeopleState.paginationFailed(
              currentPaginatedPeople,
              left,
            ),
          );
        }
      },
      (newPaginatedPeople) {
        /// emit success state with new data merged with old data if exists
        if (currentPaginatedPeople == null) {
          emit(GetPopularPeopleState.success(newPaginatedPeople));
        } else {
          emit(
            GetPopularPeopleState.success(
              newPaginatedPeople.addOldPeople(currentPaginatedPeople.people),
            ),
          );
          final emittedPaginatedPeople =
              (state as _GetPopularPeopleSuccess).paginatedPeople;
          print(
            'Fetched popular people, page: ${emittedPaginatedPeople.page}, total people: ${emittedPaginatedPeople.people.length}',
          );
        }
      },
    );
  }
}
