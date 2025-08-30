import 'package:flutter/material.dart';

/// 🚀 Flutter Theme Extensions
/// 
/// This file provides convenient extensions to make theme usage easier and more intuitive.
/// Instead of writing Theme.of(context).colorScheme.primary, you can simply use context.colorScheme.primary
/// 
/// Generated with Flutter Theme Generator for maximum developer experience.

/// Theme access extensions
extension ThemeExtensions on BuildContext {
  /// Get the current theme data
  ThemeData get theme => Theme.of(this);

  /// Get the current color scheme (primary, secondary, surface, etc.)
  ColorScheme get colorScheme => theme.colorScheme;

  /// Get the current text theme (headlineLarge, bodyMedium, etc.)
  TextTheme get textTheme => theme.textTheme;

  /// Get the current platform (iOS, Android, etc.)
  TargetPlatform get platform => theme.platform;

  /// Check if current theme is dark mode
  bool get isDarkMode => theme.brightness == Brightness.dark;


}

