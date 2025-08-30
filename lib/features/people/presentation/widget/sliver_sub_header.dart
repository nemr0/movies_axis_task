import 'package:flutter/cupertino.dart';
import 'package:movies/core/themes/theme_extensions.dart';

class SliverSubHeader extends StatelessWidget {
  const SliverSubHeader({super.key, required this.title, required this.icon});
  final IconData icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    final colorScheme = context.colorScheme;
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8, top: 12),
        child: Row(
          children: [
            Icon(icon, color: colorScheme.primary,size: 28,),
            SizedBox(width: 3,),
            Text(
              title,
              style: context.textTheme.titleLarge?.copyWith(
                color: colorScheme.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
