import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/features/people/domain/entities/person_photo.dart';

import '../../../../../core/exceptions/failure.dart';
import '../../../../../core/service_locator/service_locator.dart';
import '../../../domain/usecase/get_person_photos_use_case.dart';

part 'get_person_photos_state.dart';
part 'get_person_photos_cubit.freezed.dart';
@injectable
class GetPersonPhotosCubit extends Cubit<GetPersonPhotosState> {
  GetPersonPhotosCubit(this._getPersonPhotosUseCase) : super(const GetPersonPhotosState.initial());
  final GetPersonPhotosUseCase _getPersonPhotosUseCase;
  /// A singleton-like accessor via the service locator.
  static GetPersonPhotosCubit get instance => ServiceLocator.get<GetPersonPhotosCubit>();
  /// Fetches person photos data.
  /// - If already in a loading state, this call will return immediately.
  /// - Emits [GetPersonPhotosState.loading] when fetching data.
  /// - On success:
  ///   - Emits [GetPersonPhotosState.success] with the fetched person photos.
  /// - On failure:
  ///   - Emits [GetPersonPhotosState.failed] with the encountered failure.
  Future<void> call(int personId) async {
    /// if loading return
    if (state is _GetPersonPhotosStateLoading) {
      return;
    }

    /// emit loading state
    emit(const GetPersonPhotosState.loading());

    /// fetch person photos
    final result = await _getPersonPhotosUseCase(personId);

    /// handle result
    result.fold(
      (failure) => emit(GetPersonPhotosState.failed(failure)),
      (personPhotos) => emit(GetPersonPhotosState.success(personPhotos)),
    );
  }
}
