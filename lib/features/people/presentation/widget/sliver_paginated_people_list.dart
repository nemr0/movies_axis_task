import 'package:flutter/material.dart';
import 'package:movies/core/extensions/context_extension.dart';
import 'package:movies/features/people/domain/entities/paginated_people.dart';

import 'person_card.dart';

class SliverPaginatedPeopleList extends StatelessWidget {
  const SliverPaginatedPeopleList({
    super.key,
    this.paginatedPeople, required this.paginatingOrPaginationFailed,
  });

  final PaginatedPeople? paginatedPeople;
  final bool paginatingOrPaginationFailed;
  @override
  Widget build(BuildContext context) {
    final people = paginatedPeople?.people;
    final peopleLength = people?.length ?? 30;
    final isPortrait = context.isPortrait;
    final isMobile = context.isMobile;

    return SliverPadding(
      padding: EdgeInsetsGeometry.only(
        top: 12,
        bottom: paginatingOrPaginationFailed ? 0 : context.viewPadding.bottom,
        right: 5,
        left: 5,
      ),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: isMobile ? isPortrait ? 2 : 4 : isPortrait ? 4 : 8,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,
          childAspectRatio: 2 / 3,
        ),
        delegate: SliverChildBuilderDelegate(
          (_, index) => PersonCard(
            person:  people?[index],
          ),
          childCount: peopleLength,
        ),
      ),
    );
  }
}
