import 'package:flutter_riverpod/flutter_riverpod.dart';

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
