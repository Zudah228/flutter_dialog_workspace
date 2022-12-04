import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dialogs/error_dialog.dart';
import 'dialogs/loading_dialog.dart';
import 'states/dialog_state.dart';

class DialogStack extends StatelessWidget {
  const DialogStack({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    Widget fill({
      required Widget child,
    }) =>
        Positioned.fill(child: child);

    return Stack(
      children: [
        fill(child: child),
        fill(child: const LoadingDialog()),
        fill(child: const ErrorDialog()),
      ],
    );
  }
}
