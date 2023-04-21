abstract class FGS_UTILS__LogServiceCases {
  Future<void> logInfo(String message);

  Future<void> logNonFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason
  });

  Future<void> logFatalError({
    dynamic exception,
    StackTrace? stackTrace,
    String? reason
  });
}
