import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:movies/core/extensions/context_extension.dart';
import 'package:movies/core/themes/theme_extensions.dart';

import '../../generated/assets.gen.dart';

class SliverCustomAppBar extends StatelessWidget {
  const SliverCustomAppBar({super.key, required this.onUpPressed});
  final VoidCallback onUpPressed;
  @override
  Widget build(BuildContext context) {
    final height = 76 + context.viewPadding.top;
    return SliverLayoutBuilder(
      builder: (BuildContext context, SliverConstraints constraints) {
        final scrolled = constraints.scrollOffset > height;

        return SliverFloatingHeader(
          child: Container(
            padding: EdgeInsets.only(top: context.viewPadding.top),
            color: context.theme.appBarTheme.backgroundColor,
            height: height,
            width: context.width,
            child: Column(
              children: [
                SizedBox(
                  height: 75,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8.0,
                      vertical: 12,
                    ),
                    child: Row(
                      children: [
                        Assets.core.logo.image(),
                       if(scrolled) ...[
                         CupertinoButton(onPressed: onUpPressed, child: Icon(Icons.arrow_upward))
                       ]
                      ],
                    ),
                  ),
                ),
                Divider(height: 1),
              ],
            ),
          ),
        );
      },
    );
  }
}
