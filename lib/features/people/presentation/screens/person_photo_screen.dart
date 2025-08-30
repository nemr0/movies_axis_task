import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:movies/core/extensions/string_extension.dart';
import 'package:movies/core/screens/basic_screen.dart';
import 'package:movies/core/widgets/image_from_network_widget.dart';
import 'package:movies/features/people/domain/usecase/save_person_photo_use_case.dart';
import 'package:movies/features/people/presentation/manager/save_person_photo_cubit/save_person_photo_cubit.dart';

import '../../../../core/router/routes.dart';

class PersonPhotoScreen extends StatelessWidget {
  const PersonPhotoScreen({super.key, required this.savePhotoParams});

  final SavePersonPhotoParams savePhotoParams;

  @override
  Widget build(BuildContext context) {
    return LoaderOverlay(
      overlayWidgetBuilder: (_) => Center(child: CircularProgressIndicator.adaptive()),
      child: BlocListener<SavePersonPhotoCubit, SavePersonPhotoState>(
        listener: (context, state) {
          state.maybeWhen(
            orElse: () {
              context.loaderOverlay.hide();
            },
            loading: () {
              context.loaderOverlay.show();
            },
          );
        },
        child: BasicScreen(
          appBar: AppBar(
            leading: CupertinoButton(
              onPressed: () {
                context.pop();
              },
              child: const Icon(Icons.arrow_back_ios),
            ),
            title: Text(savePhotoParams.name.capitalizeFirstLetter),
            actions: [
              CupertinoButton(
                onPressed: () {
                 context.read<SavePersonPhotoCubit>().call(savePhotoParams);
                },
                child: const Icon(Icons.save),
              ),
            ],
          ),
          body: InteractiveViewer(child: Hero(tag: Routes.personPhotoPath(savePhotoParams.id, savePhotoParams.photoId),
          child: ImageFromNetwork(savePhotoParams.photoPath.fullImagePath)))),
        ),
    );
  }
}
