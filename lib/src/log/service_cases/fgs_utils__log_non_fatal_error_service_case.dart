/// Log non fatal error service case.
abstract class FGS_UTIL__LogNonFatalErrorServiceCase {
  /// Log non fatal error.
  Future<void> logNonFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  });
}
