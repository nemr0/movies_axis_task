import 'package:blur/blur.dart';
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
    final topPadding = context.viewPadding.top;
    final height =( 76 + (topPadding==0? 16 : topPadding)).toDouble();
    return SliverLayoutBuilder(
      builder: (BuildContext context, SliverConstraints constraints) {
        final scrolled = constraints.scrollOffset > height;

        return SliverFloatingHeader(
          child: SizedBox(
            height: height,
            width: context.width,
          ).blurred(
            blurColor: context.theme.scaffoldBackgroundColor,
            colorOpacity: 0.8,
            overlay: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(height: context.viewPadding.top,),
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
                          Spacer(),
                          CupertinoButton(onPressed: onUpPressed, child: Icon(Icons.arrow_upward,size: 26,))
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
