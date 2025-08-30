import 'package:flutter/material.dart';
import 'package:movies/core/themes/theme_extensions.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({
    super.key,
    required this.icon,
    required this.text,
    required this.tooltip,  this.inverse = false,
  });

  ChipWidget.fromIcon({
    super.key,
    required this.text,
    required IconData icon,
    required this.tooltip,
    this.inverse = false,
  }) : icon = ((color) => Icon(icon, size: 24, color: color));
  final Widget Function(Color color) icon;
  final String text;
  final String tooltip;
  final bool inverse;

  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 8),
      child: Tooltip(
        triggerMode: TooltipTriggerMode.tap,
        message: tooltip,
        textStyle: TextStyle(
          color: !inverse ? colorScheme.onPrimary : colorScheme.secondary,
        ),
        decoration: BoxDecoration(
          color: inverse ? colorScheme.onPrimary : colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 3, horizontal: 8),
          decoration: BoxDecoration(
            color: inverse ? colorScheme.onPrimaryContainer.withAlpha(200) : colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              icon(inverse ? colorScheme.onPrimary: colorScheme.onPrimaryContainer.withAlpha(200)),
              SizedBox(width: 4),
              Text(
                text,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: inverse? colorScheme.onPrimary: colorScheme.onPrimaryContainer,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
