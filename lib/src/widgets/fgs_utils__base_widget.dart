
import 'package:fgs_utils/src/di_container/fgs_utils__di_container_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Base widget.
abstract class FGS_UTILS__BaseWidget extends StatelessWidget {
  /// Constructor.
  const FGS_UTILS__BaseWidget({
    super.key,
    FGS_UTILS__DiContainerProvider? diContainerProvider,
  }): _diContainerProvider=diContainerProvider;

  final FGS_UTILS__DiContainerProvider? _diContainerProvider;

  /// Get di container provider.
  FGS_UTILS__DiContainerProvider getDiContainerProvider(BuildContext context) {
    return _diContainerProvider ?? Provider.of(context, listen: false);
  }
}
