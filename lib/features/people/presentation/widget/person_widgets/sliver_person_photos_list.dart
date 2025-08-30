import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:movies/core/extensions/string_extension.dart';

import '../../../../../core/router/routes.dart';
import '../../../../../core/widgets/error_screen/error_screen.dart';
import '../../../../../core/widgets/image_from_network_widget.dart';
import '../../../domain/entities/person.dart';
import '../../../domain/usecase/save_person_photo_use_case.dart';
import '../../manager/get_person_photos_cubit/get_person_photos_cubit.dart';

class SliverPersonPhotosList extends StatelessWidget {
  const SliverPersonPhotosList({super.key, required this.person});

  final Person person;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: 300,
        child: Builder(
          builder: (context) {
            final state = context.watch<GetPersonPhotosCubit>().state;
            final personPhotos = state.maybeWhen(
              orElse: () => null,
              success: (photos) => photos,
            );
            final failure = state.maybeWhen(
              orElse: () => null,
              failed: (f) => f,
            );
            if (failure != null) {
              return ErrorScreen(
                onActionPressed: () =>
                    context.read<GetPersonPhotosCubit>().call(person.id),
                failure: failure,
              );
            }
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.separated(
                itemCount: personPhotos?.$2.length ?? 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {

                  final imageUrl = personPhotos?.$2[index];
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: AspectRatio(
                      aspectRatio: imageUrl?.aspectRatio ?? 2 / 3,
                      child: ImageFromNetwork(
                        imageUrl?.filePath.fullImagePath,
                        loading: imageUrl == null,
                        imageBuilder: (_,provider){
                          return Hero(
                            tag: Routes.personPhotoPath(person.id, index),
                            child: CupertinoButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {
                                  context.push(Routes.personPhotoPath(person.id, index), extra: SavePersonPhotoParams(
                                    id: person.id,
                                    name: person.name,
                                    photoOf: PhotoOf.profile,
                                    photoId: index,
                                    photoPath: imageUrl?.filePath.fullImagePath ?? '',
                                  ));
                                },
                                child: Image(image: provider, fit: BoxFit.cover)),
                          );
                        },
                      ),
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    SizedBox(width: 10),
              ),
            );
          },
        ),
      ),
    );
  }
}
