/// Log non fatal error provider case.
abstract class FGS_UTIL__LogNonFatalErrorProviderCase {
  /// Log non fatal error.
  Future<void> logNonFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  });
}
