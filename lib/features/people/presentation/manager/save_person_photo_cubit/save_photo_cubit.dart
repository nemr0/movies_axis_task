import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/features/people/domain/usecase/save_person_photo_use_case.dart';

import '../../../../../core/service_locator/service_locator.dart';

part 'save_photo_state.dart';
part 'save_photo_cubit.freezed.dart';
@injectable
class SavePhotoCubit extends Cubit<SavePhotoState> {
  SavePhotoCubit(this._savePersonPhotoUseCase) : super(const SavePhotoState.initial());
  /// A singleton-like accessor via the service locator.
  static SavePhotoCubit get instance => ServiceLocator.get<SavePhotoCubit>();
  final SavePersonPhotoUseCase _savePersonPhotoUseCase;

  Future<void> call(SavePhotoParams params) async {
    if (state is _SavePhotoLoading) {
      return;
    }
    emit(const SavePhotoState.loading());
    final result = await _savePersonPhotoUseCase(params);
    result.fold(
      (failure) => emit(SavePhotoState.failed(failure)),
      (_) => emit(const SavePhotoState.success()),
    );
  }
}
