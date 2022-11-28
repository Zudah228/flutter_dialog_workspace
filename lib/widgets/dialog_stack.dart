import 'package:flutter/material.dart';
import 'package:flutter_dialog_workspace/dialogs/loading_dialog.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DialogStack extends ConsumerWidget {
  const DialogStack({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context , WidgetRef ref) {
    Widget fill({required Widget child}) => Positioned.fill(child: child);
    return Stack(
      children: [
        fill(child: child),
        if (ref.watch(showLoadingDialog))
        fill(child: const LoadingDialog())
      ],
    );
  }
}
