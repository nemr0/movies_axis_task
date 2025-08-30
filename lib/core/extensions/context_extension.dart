import 'package:flutter/material.dart';
import 'package:movies/core/themes/theme_extensions.dart';
import 'package:skeletonizer/skeletonizer.dart';

extension ContextExtension on BuildContext {

  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
  EdgeInsets get viewPadding => MediaQuery.paddingOf(this);
  ShimmerEffect get shimmerEffect => ShimmerEffect(
    baseColor: colorScheme.secondary.withAlpha(120),
    highlightColor: colorScheme.onSecondaryContainer.withAlpha(180),
    duration: const Duration(milliseconds: 1500),
  );

  bool get isMobile => MediaQuery.sizeOf(this).shortestSide < 600;
  bool get isPortrait => MediaQuery.orientationOf(this) == Orientation.portrait;
}