part of 'save_person_photo_cubit.dart';

@freezed
class SavePersonPhotoState with _$SavePersonPhotoState {
  const factory SavePersonPhotoState.initial() = _SavePersonPhotoInitial;
  const factory SavePersonPhotoState.loading() = _SavePersonPhotoLoading;
  const factory SavePersonPhotoState.success() = _SavePersonPhotoSuccess;
  const factory SavePersonPhotoState.failed(Failure failure) = _SavePersonPhotoFailed;
}
