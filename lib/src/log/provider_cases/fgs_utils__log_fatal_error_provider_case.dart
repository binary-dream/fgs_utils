/// Log fatal error provider case.
abstract class FGS_UTILS__LogFatalErrorProviderCase {
  /// Log fatal error.
  Future<void> logFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  });
}
