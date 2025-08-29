import 'package:flutter/widgets.dart';
import 'package:skeletonizer/skeletonizer.dart';

extension WidgetExtension on Widget{
  Widget withSkeleton(bool enabled,{
    PaintingEffect? effect,
    TextBoneBorderRadius? textBoneBorderRadius,
    bool? ignoreContainers,
    bool? justifyMultiLineText,
    Color? containersColor,
    bool ignorePointers = true,
    bool? enableSwitchAnimation}) {
    if (enabled) {
      return Skeletonizer(
        enabled: true,
        ignoreContainers: ignoreContainers,
        ignorePointers: ignorePointers,
        justifyMultiLineText: justifyMultiLineText,
        effect: effect,
        textBoneBorderRadius: textBoneBorderRadius,
        containersColor: containersColor,
        enableSwitchAnimation: enableSwitchAnimation,
        child: this,
      );
    }
    return this;
  }
}