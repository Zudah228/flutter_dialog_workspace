import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'dialogs/error_dialog.dart';
import 'dialogs/loading_dialog.dart';
import 'states/dialog_state.dart';

final dialogStateProvider = StateProvider.autoDispose((_) => DialogState());

extension DialogRefEx on Ref {
  void showLoadingIndicator() => read(dialogStateProvider.notifier)
      .update((state) => state.copyWith(showLoading: true));
  void hideLoadingIndicator() => read(dialogStateProvider.notifier)
      .update((state) => state.copyWith(showLoading: false));

  void showErrorDialog({String? title, String? description}) =>
      read(dialogStateProvider.notifier).update((state) => state.copyWith(
          showError: true, errorTitle: title, errorDescription: description));
  void hideErrorDialog() {
    read(dialogStateProvider.notifier).update((state) => state.copyWith(
        showError: false, errorTitle: null, errorDescription: null));
  }
}

extension DialogWidgetRefEx on WidgetRef {
  void showLoadingIndicator() => read(dialogStateProvider.notifier)
      .update((state) => state.copyWith(showLoading: true));
  void hideLoadingIndicator() => read(dialogStateProvider.notifier)
      .update((state) => state.copyWith(showLoading: false));

  void showErrorDialog({String? title, String? description}) =>
      read(dialogStateProvider.notifier).update((state) => state.copyWith(
          showError: true, errorTitle: title, errorDescription: description));
  void hideErrorDialog() {
    read(dialogStateProvider.notifier).update((state) => state.copyWith(
        showError: false, errorTitle: null, errorDescription: null));
  }
}

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
