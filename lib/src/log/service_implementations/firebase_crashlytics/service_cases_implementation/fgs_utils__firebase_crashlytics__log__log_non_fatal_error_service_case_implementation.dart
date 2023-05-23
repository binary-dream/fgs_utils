import 'package:fgs_utils/src/log/service_implementations/firebase_crashlytics/fgs_utils__firebase_crashlytics__log_service_implementation.dart';

/// Log non fatal error service case.
// ignore: lines_longer_than_80_chars
abstract class FGS_UTIL__FIREBASE_CRASHLYTICS__LOG__LogNonFatalErrorServiceCaseImplementation {
  /// Execute.
  Future<void> execute({
    required FGS_UTILS__FIREBASE_CRASHLYTICS__LogServiceImplementation service,
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  }) async {
    await service.crashlytics.recordError(
      exception,
      stackTrace,
      reason: reason,
    );
  }
}
