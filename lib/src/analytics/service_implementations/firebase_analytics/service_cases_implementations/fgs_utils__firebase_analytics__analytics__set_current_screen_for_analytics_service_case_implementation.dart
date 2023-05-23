import 'package:fgs_utils/src/analytics/service_implementations/firebase_analytics/fgs_utils__firebase_analytics__analytics_service_implementation.dart';

/// Set current screen for analytics service case implementation.
// ignore: lines_longer_than_80_chars
class FGS_UTILS__FIREBASE_ANALYTICS__ANALYTICS__SetCurrentScreenForAnalyticsServiceCaseImplementation {
  /// Execute.  
  Future<void> execute({
    required FGS_UTILS__FIREBASE_ANALYTICS__AnalyticsServiceImplementation 
      service,
    required String screenName,
  }) async {
    await service.analytics.setCurrentScreen(screenName: screenName);
  }
}
