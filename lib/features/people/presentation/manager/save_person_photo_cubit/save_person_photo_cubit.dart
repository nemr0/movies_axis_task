import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:movies/core/exceptions/failure.dart';
import 'package:movies/features/people/domain/usecase/save_person_photo_use_case.dart';

import '../../../../../core/service_locator/service_locator.dart';

part 'save_person_photo_state.dart';
part 'save_person_photo_cubit.freezed.dart';
@injectable
class SavePersonPhotoCubit extends Cubit<SavePersonPhotoState> {
  SavePersonPhotoCubit(this._savePersonPhotoUseCase) : super(const SavePersonPhotoState.initial());
  /// A singleton-like accessor via the service locator.
  static SavePersonPhotoCubit get instance => ServiceLocator.get<SavePersonPhotoCubit>();
  final SavePersonPhotoUseCase _savePersonPhotoUseCase;

  Future<void> call(SavePersonPhotoParams params) async {
    if (state is _SavePersonPhotoLoading) {
      return;
    }
    emit(const SavePersonPhotoState.loading());
    final result = await _savePersonPhotoUseCase(params);
    result.fold(
      (failure) => emit(SavePersonPhotoState.failed(failure)),
      (_) => emit(const SavePersonPhotoState.success()),
    );
  }
}
