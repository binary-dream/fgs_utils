import 'package:freezed_annotation/freezed_annotation.dart';

import '../translatable_message/fgs_utils__translateable_message_state.dart';

part 'fgs_utils__toast_message_state.freezed.dart';

@freezed
class FGS_UTILS__ToastMessageState with _$FGS_UTILS__ToastMessageState {
  const FGS_UTILS__ToastMessageState._();
  
  const factory FGS_UTILS__ToastMessageState.main({
    required String uuid,
    FGS_UTILS__TranslateableMessageState? localizedMessage,
    String? message
  }) = FGS_UTILS__ToastMessageState__Main;
}
