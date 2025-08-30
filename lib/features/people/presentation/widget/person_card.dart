
import 'package:blur/blur.dart';
import 'package:flutter/cupertino.dart';
import 'package:movies/core/extensions/string_extension.dart';
import 'package:movies/core/themes/theme_extensions.dart';
import 'package:movies/core/widgets/image_from_network_widget.dart';
import 'package:movies/features/people/domain/entities/person.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key,  this.person,  this.onPressed});

  final Person? person;
  final ValueChanged<Person>? onPressed;
  @override
  Widget build(BuildContext context) {
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;
    final isKnownForDepartmentEmpty = person?.knownForDepartment.isEmpty ?? true;
    return Hero(
      tag: person ?? Person.empty(),
      child: CupertinoButton(
        onPressed: onPressed == null || person == null ? null : ()=> onPressed!(person!),
        padding: EdgeInsets.zero,
        child: AspectRatio(
          aspectRatio: 2/3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: colorScheme.secondaryContainer, width:1),
                boxShadow: [
                  BoxShadow(
                    color: colorScheme.primary.withAlpha(12),
                    blurRadius: 4,
                    offset: const Offset(0, 2),
                  ),
                ]
            ),
            child: ImageFromNetwork(
              person?.profilePath.fullImagePath ?? '',
              loading: person == null,
              imageBuilder: (context, imageProvider) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
          
                    image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: double.infinity,
                      height: isKnownForDepartmentEmpty? 40 : 55,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: colorScheme.onPrimaryContainer.withAlpha(12),
                        borderRadius:  BorderRadius.circular(8),
                      ),
          
                    ).blurred(
                      blurColor: colorScheme.primaryContainer,
                      colorOpacity: 0.4,
                      blur: 10,
                      overlay:  person == null? null:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          person!.name,
                          style: textTheme.titleMedium,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                        if (!isKnownForDepartmentEmpty)
                          Text(
                            person!.knownForDepartment,
                            style: textTheme.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                          ),
                      ],
                    ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
