import 'package:fgs_utils/src/navigable_widget/fgs_utils__navigable_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

/// Navigable widget mixin.
mixin FGS_UTILS__NavigableWidgetMixin
  <B extends Bloc<E, S>, E, S extends FGS_UTILS__NavigableState> 
  on Widget {
  /// Gets the navigate to bloc listener.
  BlocListener<B, S> getNavigateToBlocListener() {
    return BlocListener<B, S>(
      listenWhen: (previousState, currentState) {
        final isCurrentNavigateToNonNull = 
          currentState.getNavigateToState() != null;
        final isPreviousNavigateToNull = 
          previousState.getNavigateToState() == null;
        final isPreviousNavigateToNonNull = 
          previousState.getNavigateToState() != null;
        if(isCurrentNavigateToNonNull && isPreviousNavigateToNull) {
          return true;
        } else if(isCurrentNavigateToNonNull && isPreviousNavigateToNonNull) {
          return previousState.getNavigateToState()!.uuid != 
            currentState.getNavigateToState()!.uuid;
        }
        else {
          return false;
        }
      },
      listener: (context, state) {
        if(state.getNavigateToState()!.push) {
          context.pushNamed(
            state.getNavigateToState()!.routeName,
            params: state.getNavigateToState()!.pathParams ?? {},
            queryParams: state.getNavigateToState()!.queryParams ?? {},
          );
        } else {
          context.goNamed(
            state.getNavigateToState()!.routeName,
            params: state.getNavigateToState()!.pathParams ?? {},
            queryParams: state.getNavigateToState()!.queryParams ?? {},
          );
       }
      },
    );
  }
}
