
import 'package:fgs_utils/src/di_container/fgs_utils__di_container_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// Base widget.
abstract class FGS_UTILS__BaseWidget extends StatelessWidget {
  /// Constructor.
  const FGS_UTILS__BaseWidget({
    super.key,
    FGS_UTILS__DiContainerService? diContainerService,
  }): _diContainerService=diContainerService;

  final FGS_UTILS__DiContainerService? _diContainerService;

  /// Get di container service.
  FGS_UTILS__DiContainerService getDiContainerService(BuildContext context) {
    return _diContainerService ?? Provider.of(context, listen: false);
  }
}
