import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final showLoadingDialog = StateProvider((_) => false);

extension LoadingDialogRefEx on Ref {
  void showLoadingIndicator() => watch(showLoadingDialog.notifier).state = true;
  void hideLoadingIndicator() => watch(showLoadingDialog.notifier).state = false;
}

extension LoadingDialogWidgetRefEx on WidgetRef {
  void showLoadingIndicator() => watch(showLoadingDialog.notifier).state = true;
  void hideLoadingIndicator() => watch(showLoadingDialog.notifier).state = false;
}

class LoadingDialog extends StatelessWidget {
  const LoadingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox.expand(
      child: ColoredBox(
        color: Colors.black26,
        child: Center(
          child: SizedBox(child: CircularProgressIndicator()),
        ),
      ),
    );
  }
}
