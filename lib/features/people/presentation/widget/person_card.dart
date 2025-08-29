import 'package:flutter/material.dart';
import 'package:movies/core/extensions/string_extension.dart';
import 'package:movies/core/widgets/image_from_network_widget.dart';
import 'package:movies/features/people/domain/entities/person.dart';

class PersonCard extends StatelessWidget {
  const PersonCard({super.key, required this.person});

  final Person person;

  @override
  Widget build(BuildContext context) {
    return ImageFromNetwork(
      person.profilePath.fullImagePath,
      loading: person == Person.empty(),
      imageBuilder: (context, imageProvider) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,

          ),
        );
      },
    );
  }
}
