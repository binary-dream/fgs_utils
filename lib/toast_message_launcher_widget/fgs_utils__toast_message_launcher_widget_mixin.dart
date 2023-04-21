import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'fgs_utils__toast_message_launcher_state.dart';

mixin FGS_UTILS__ToastMessageLauncherWidgetMixin<B extends Bloc<E, S>, E, S extends FGS_UTILS__ToastMessageLauncherState> on Widget {
  getToastMessageBlocListener() {
    return BlocListener<B, S>(
      listenWhen: (previousState, currentState) {
        final isCurrentToastMessageNonNull = currentState.getToastMessageState() != null;
        final isPreviousToastMessageNull = previousState.getToastMessageState() == null;
        final isPreviousToastMessageNonNull = previousState.getToastMessageState() != null;
        if(isCurrentToastMessageNonNull && isPreviousToastMessageNull) {
          return true;
        } else if(isCurrentToastMessageNonNull && isPreviousToastMessageNonNull) {
          return previousState.getToastMessageState()!.uuid != currentState.getToastMessageState()!.uuid;
        }
        else {
          return false;
        }
      },
      listener: (context, state) {
        if(state.getToastMessageState()!.localizedMessage != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.getToastMessageState()!.localizedMessage!.translate(context)),
          ));
        } else if(state.getToastMessageState()!.message != null) {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text(state.getToastMessageState()!.message!),
          ));
        }
      },
    );
  }
}
