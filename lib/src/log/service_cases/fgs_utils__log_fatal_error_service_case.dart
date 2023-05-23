/// Log fatal error service case.
abstract class FGS_UTILS__LogFatalErrorServiceCase {
  /// Log fatal error.
  Future<void> logFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  });
}
