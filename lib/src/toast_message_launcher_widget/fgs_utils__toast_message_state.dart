import 'package:fgs_utils/src/translatable_message/fgs_utils__translateable_message_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fgs_utils__toast_message_state.freezed.dart';

/// Toast message state.
@freezed
class FGS_UTILS__ToastMessageState with _$FGS_UTILS__ToastMessageState {
  const FGS_UTILS__ToastMessageState._();
  
  /// Main toast message state.
  const factory FGS_UTILS__ToastMessageState.main({
    required String uuid,
    FGS_UTILS__TranslateableMessageState? localizedMessage,
    String? message,
  }) = FGS_UTILS__ToastMessageState__Main;

  /// Error toast message state.
  const factory FGS_UTILS__ToastMessageState.error({
    required String uuid,
    FGS_UTILS__TranslateableMessageState? localizedMessage,
    String? message,
  }) = FGS_UTILS__ToastMessageState__Error;
}
