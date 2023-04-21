import 'package:freezed_annotation/freezed_annotation.dart';

part 'fgs_utils__navigate_to_state.freezed.dart';

@freezed
class FGS_UTILS__NavigateToState with _$FGS_UTILS__NavigateToState {
  const FGS_UTILS__NavigateToState._();
  
  const factory FGS_UTILS__NavigateToState.main({
    required String uuid,
    required String routeName,
    required bool push,
    Map<String, String>? pathParams,
    Map<String, String>? queryParams
  }) = FGS_UTILS__NavigateToState__Main;
}
