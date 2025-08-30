import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movies/core/extensions/context_extension.dart';
import 'package:movies/features/people/domain/entities/paginated_people.dart';

import '../../../../../core/router/routes.dart';
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

    return SliverPadding(
      padding: context.gridPadding(addBottom:!paginatingOrPaginationFailed),
      sliver: SliverGrid(
        gridDelegate: context.gridDelegate,
        delegate: SliverChildBuilderDelegate(
          (_, index) {
            final person = people?[index];
            return PersonCard(
              onPressed: person == null? null : (){
                context.push(Routes.personPath(person.id), extra: person);
              },
              person: person ,
            );
          },
          childCount: peopleLength,
        ),
      ),
    );
  }
}
