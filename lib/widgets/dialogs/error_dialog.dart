import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../dialog_stack.dart';
import 'dialog_barrier.dart';

class ErrorDialog extends ConsumerWidget {
  const ErrorDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isShow =
        ref.watch(dialogStateProvider.select((value) => value.showError));
    final title =
        ref.watch(dialogStateProvider.select((value) => value.errorTitle));
    final description = ref
        .watch(dialogStateProvider.select((value) => value.errorDescription));

    return DialogBarrier(
      isShow: isShow,
      hide: ref.hideErrorDialog,
      barrierDismissible: true,
      child: AlertDialog(
        title: title != null ? Text(title) : null,
        content: description != null ? Text(description) : null,
        actions: [
          TextButton(onPressed: ref.hideErrorDialog, child: const Text('閉じる'))
        ],
      ),
    );
  }
}
