
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dialog_state.freezed.dart';


@freezed
class DialogState with _$DialogState {
  factory DialogState({
    @Default(false) bool showLoading,
    @Default(false) bool showError,
    String? errorTitle,
    String? errorDescription,
  }) = _DialogState;
	
}
