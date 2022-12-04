import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'barrier_widgets/dialog_barrier.dart';
import '../dialog_state_provider.dart';

class LoadingDialog extends ConsumerWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DialogBarrier(
        visible:
            ref.watch(dialogStateProvider.select((value) => value.showLoading)),
        hide: ref.hideLoadingIndicator,
        barrierDismissible: false,
        duration: Duration.zero,
        child: const Center(child: CircularProgressIndicator()));
  }
}
