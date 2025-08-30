import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../network/network_service.dart';

class BasicScreen extends StatelessWidget {
  const BasicScreen({super.key, this.appBar, this.body, this.backgroundColor});

  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final showInspector = kDebugMode;
    return Scaffold(
      appBar: appBar,
      backgroundColor: backgroundColor,
      floatingActionButton: showInspector?FloatingActionButton.extended(
        extendedPadding: EdgeInsets.symmetric(horizontal: 8),
        onPressed: NetworkService.instance.showInspector,
        label: Row(
          children: [
            const Icon(Icons.info),
            const SizedBox(width: 3),
            const Text('Inspect'),
          ],
        ),

      ):null,
      body: body, // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
