import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies/core/extensions/context_extension.dart';
import 'package:movies/core/router/routes.dart';
import 'package:movies/features/people/domain/entities/person.dart';
import 'package:movies/features/people/domain/usecase/save_person_photo_use_case.dart';

import 'known_for_card.dart';

class SliverKnownForList extends StatelessWidget {
  const SliverKnownForList(this.allKnownFor, {super.key});

  final List<KnownFor> allKnownFor;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: context.gridPadding(),
      sliver: SliverGrid(
        delegate: SliverChildBuilderDelegate((_, index) {
          final knownFor = allKnownFor[index];
          return KnownForCard(knownFor: knownFor, onPressed: () {
            context.push(Routes.personPhotoPath(knownFor.id,index), extra: SavePhotoParams(id: knownFor.id, name: knownFor.originalTitle, photoOf: PhotoOf.knownFor, photoPath: knownFor.posterPath, photoId: index));
          },);
        }, childCount: allKnownFor.length),
        gridDelegate: context.gridDelegate,
      ),
    );
  }
}
