import 'package:flutter/cupertino.dart';
import 'package:movies/core/themes/theme_extensions.dart';

import '../../exceptions/failure.dart';
import '../../exceptions/network_failure.dart';


class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
    required this.onActionPressed,
    required this.failure,
    this.actionTitle = 'Refresh',
  });
  final String actionTitle;
  final Failure failure;
  final VoidCallback onActionPressed;

  @override
  Widget build(BuildContext context) {
    final isNetworkError = failure is NetworkFailure;
    final textTheme = context.textTheme;
    final colorScheme = context.colorScheme;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Icon(
            isNetworkError
                ? CupertinoIcons.wifi_exclamationmark
                : CupertinoIcons.at_circle,
            size: 40,
          ),
          const SizedBox(height: 10),
          Text(
            isNetworkError ? 'Network Error!' : 'Server Error!',
            style: textTheme.headlineMedium?.copyWith(
              color: colorScheme.primary,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            isNetworkError
                ? 'Could not connect to the network'
                : 'Could not fetch data from the server',
            style: textTheme.bodyLarge?.copyWith(
              color: colorScheme.onSurface,
            ),
          ),
          const SizedBox(height: 10),
          CupertinoButton.filled(
            onPressed: onActionPressed,
            padding: const EdgeInsets.all(12),
            child:  Text(actionTitle,style: textTheme.bodyLarge?.copyWith(color: colorScheme.primaryContainer),),
          ),
        ],
      ),
    );
  }
}
