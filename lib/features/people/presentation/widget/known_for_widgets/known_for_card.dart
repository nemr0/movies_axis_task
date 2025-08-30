import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies/core/extensions/string_extension.dart';
import 'package:movies/core/themes/theme_extensions.dart';
import 'package:movies/core/widgets/image_from_network_widget.dart';
import 'package:movies/features/people/domain/entities/person.dart';
import 'package:movies/features/people/presentation/widget/chip_widget.dart';
class KnownForCard extends StatelessWidget {
  const KnownForCard({super.key, required this.knownFor,required this.onPressed});

  final KnownFor knownFor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colorScheme.secondary, width: 2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: ImageFromNetwork(knownFor.posterPath.fullImagePath,
          imageBuilder: (_,provider){
            return CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: onPressed,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: provider,
                    fit: BoxFit.cover,
                  ),
                ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 4.0),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      children: [
                        ChipWidget.fromIcon(
                          text: knownFor.popularity.toStringAsFixed(1),
                          icon: Icons.local_fire_department_rounded,
                          tooltip: 'Popularity',
                          inverse: true,
                        ),
                        if(knownFor.releaseDate!=null && knownFor.releaseDate!.isNotEmpty)
                          ChipWidget.fromIcon(
                            text: knownFor.releaseDate?.substring(0,knownFor.releaseDate!.length >= 4 ?4:knownFor.releaseDate!.length) ?? '',
                            icon: Icons.date_range,
                            tooltip: 'Release Year',
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
