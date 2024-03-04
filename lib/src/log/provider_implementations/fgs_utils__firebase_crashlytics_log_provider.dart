
import 'package:fgs_utils/src/log/fgs_utils__log_provider.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

/// Firebase crashlytics provider.
class FGS_UTILS__FirebaseCrashliticsLogProvider 
  implements FGS_UTILS__LogProvider {
  /// Constructor.
  FGS_UTILS__FirebaseCrashliticsLogProvider({
    required this.crashlytics,
  });
  
  /// Firebase crashlytics instance.
  final FirebaseCrashlytics crashlytics;

  @override
  Future<void> logInfo(String message) async {
    await crashlytics.log(message);
  }

  @override
  Future<void> logNonFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  }) async {
    await crashlytics.recordError(
      exception,
      stackTrace,
      reason: reason,
    );
  }

  @override
  Future<void> logFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  }) async {
    await crashlytics.recordError(
      exception,
      stackTrace,
      reason: reason,
      fatal: true,
    );
  }
}
