import 'package:flutter/material.dart';
import 'package:movies/core/themes/theme_extensions.dart';
import 'package:skeletonizer/skeletonizer.dart';

/// A set of convenient helpers on [BuildContext] for sizing, theming,
/// layout and shimmer effects in the Movies app.
extension ContextExtension on BuildContext {
  /// The total width of the current media (screen).
  double get width => MediaQuery.sizeOf(this).width;

  /// The total height of the current media (screen).
  double get height => MediaQuery.sizeOf(this).height;

  /// The padding imposed by system UI (e.g., status bar, notch).
  EdgeInsets get viewPadding => MediaQuery.paddingOf(this);

  /// A preconfigured [ShimmerEffect] using the app's color scheme.
  ShimmerEffect get shimmerEffect => ShimmerEffect(
    baseColor: colorScheme.secondary.withAlpha(120),
    highlightColor: colorScheme.onSecondaryContainer.withAlpha(180),
    duration: const Duration(milliseconds: 1500),
  );

  /// Returns true if the device’s shortest side is less than 600 pixels.
  bool get isMobile => MediaQuery.sizeOf(this).shortestSide < 600;

  /// A grid delegate with a fixed cross-axis count that adapts by orientation
  /// and device size.
  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isMobile
            ? isPortrait
                  ? 2
                  : 4
            : isPortrait
            ? 4
            : 8,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: 2 / 3,
      );

  /// Padding to apply around a grid, with optional bottom inset for safe area.
  EdgeInsets gridPadding({bool addBottom = true}) => EdgeInsets.only(
    top: 12,
    bottom: addBottom ? viewPadding.bottom : 0,
    right: 8,
    left: 8,
  );

  /// Returns true if the current orientation is portrait.
  bool get isPortrait => MediaQuery.orientationOf(this) == Orientation.portrait;
}
