import 'package:fgs_utils/src/log/service_implementations/firebase_crashlytics/fgs_utils__firebase_crashlytics__log_service_implementation.dart';

/// Log info service case.
// ignore: lines_longer_than_80_chars
class FGS_UTILS__FIREBASE_CRASHLYTICS__LOG__LogInfoServiceCaseImplementation {
  /// Log info.
  Future<void> execute({
    required FGS_UTILS__FIREBASE_CRASHLYTICS__LogServiceImplementation service,
    required String message,
  }) async {
    await service.crashlytics.log(message);
  }
}
