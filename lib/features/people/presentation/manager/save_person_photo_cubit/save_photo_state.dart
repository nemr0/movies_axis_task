part of 'save_photo_cubit.dart';

@freezed
class SavePhotoState with _$SavePhotoState {
  const factory SavePhotoState.initial() = _SavePhotoInitial;
  const factory SavePhotoState.loading() = _SavePhotoLoading;
  const factory SavePhotoState.success() = _SavePhotoSuccess;
  const factory SavePhotoState.failed(Failure failure) = _SavePhotoFailed;
}
