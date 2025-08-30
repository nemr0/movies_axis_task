import 'package:flutter/material.dart';
import 'package:movies/core/extensions/context_extension.dart';
import 'package:movies/features/people/domain/entities/person.dart';

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
          return KnownForCard(knownFor: allKnownFor[index]);
        }, childCount: allKnownFor.length),
        gridDelegate: context.gridDelegate,
      ),
    );
  }
}
