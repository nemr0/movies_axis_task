part of 'get_person_photos_cubit.dart';

@freezed
class GetPersonPhotosState with _$GetPersonPhotosState {
  const factory GetPersonPhotosState.initial() = _GetPersonPhotosStateInitial;
  const factory GetPersonPhotosState.loading() = _GetPersonPhotosStateLoading;
  const factory GetPersonPhotosState.success(PersonPhotos personPhoto) = _GetPersonPhotosStateSuccess;
  const factory GetPersonPhotosState.failed(Failure failure,) = _GetPersonPhotosStateFailes;
}
