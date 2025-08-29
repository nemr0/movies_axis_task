import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {

  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;
  EdgeInsets get viewPadding => MediaQuery.paddingOf(this);

}