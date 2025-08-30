import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:movies/core/extensions/context_extension.dart';
import 'package:movies/core/extensions/string_extension.dart';
import 'package:movies/core/screens/basic_screen.dart';
import 'package:movies/core/themes/theme_extensions.dart';
import 'package:movies/features/people/domain/entities/person.dart';
import 'package:flutter/material.dart';
import 'package:movies/features/people/presentation/widget/person_widgets/person_card.dart';
import 'package:mesh_gradient/mesh_gradient.dart';

import '../widget/chip_widget.dart';
import '../widget/known_for_widgets/sliver_known_for_photo_list.dart';
import '../widget/person_widgets/sliver_person_photos_list.dart';
import '../widget/sliver_sub_header.dart';

class PersonDetailsScreen extends StatelessWidget {
  const PersonDetailsScreen(this.person, {super.key});

  final Person person;

  IconData get iconFromGender {
    return switch (person.gender) {
      Gender.male => Icons.male,
      Gender.female => Icons.female,
      Gender.other => Icons.circle,
    };
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    final textTheme = context.textTheme;
    final list = [
      Center(
        child: SizedBox(
          width: context.width * .5,
          child: PersonCard(person: person, withOverlay: false),
        ),
      ),
      SizedBox(height: 12),
      Center(
        child: Text(
          person.name,
          style: textTheme.titleLarge?.copyWith(color: colorScheme.onPrimary),
        ),
      ),
      SizedBox(height: 5),
      Center(
        child: Text(
          person.knownForDepartment,
          style: textTheme.titleMedium?.copyWith(
            color: colorScheme.onSecondary.withAlpha(180),
          ),
        ),
      ),
      SizedBox(height: 12),

      Wrap(
        alignment: WrapAlignment.center,
        children: [
          ChipWidget.fromIcon(
            text: person.gender.name.capitalizeFirstLetter,
            icon: iconFromGender,
            tooltip: 'Gender',
          ),
          ChipWidget.fromIcon(
            text: person.popularity.toStringAsFixed(1),
            icon: Icons.local_fire_department_rounded,
            inverse: true,
            tooltip: 'Popularity',
          ),
          ChipWidget.fromIcon(
            text: 'Adult',
            icon: person.adult ? Icons.check : Icons.close,
            tooltip: '',
          ),
        ],
      ),
    ];

    return BasicScreen(
      backgroundColor: colorScheme.primaryContainer,
      body: MeshGradient(
        points: [
          MeshGradientPoint(
            position: const Offset(0.2, 0.6),
            color: colorScheme.onPrimary,
          ),
          MeshGradientPoint(
            position: const Offset(0.4, 0.5),
            color: colorScheme.onSecondaryFixedVariant,
          ),
          MeshGradientPoint(
            position: const Offset(0.7, 0.4),
            color: colorScheme.onTertiary,
          ),
          MeshGradientPoint(
            position: const Offset(0.4, 0.9),
            color: colorScheme.onPrimaryFixedVariant,
          ),
        ],
        options: MeshGradientOptions(blend: 5),
        child: CustomScrollView(
          slivers: [
            PinnedHeaderSliver(
              child: Padding(
                padding: EdgeInsets.only(
                  top: context.viewPadding.top,
                  left: 8.0,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: CupertinoButton.filled(
                    sizeStyle: CupertinoButtonSize.small,
                    onPressed: () => context.pop(),
                    child: Icon(Icons.arrow_drop_down),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (_, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: list[index],
                ),
                childCount: list.length,
              ),
            ),
            SliverSubHeader(title: 'Photos:',icon: Icons.person,),
            SliverPersonPhotosList(person: person),
            SliverSubHeader(title: 'Known For:',icon: Icons.person,),
            SliverKnownForList(person.allKnownFor),
            SliverToBoxAdapter(
              child: SizedBox(
                height: context.viewPadding.bottom + 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}


