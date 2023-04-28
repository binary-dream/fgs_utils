/// Log service cases.
abstract class FGS_UTILS__LogServiceCases {
  /// Log info.
  Future<void> logInfo(String message);

  /// Log non fatal error.
  Future<void> logNonFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  });

  /// Log fatal error.
  Future<void> logFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason,
  });
}
