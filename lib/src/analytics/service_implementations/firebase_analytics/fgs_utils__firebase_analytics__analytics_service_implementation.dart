import 'package:fgs_utils/src/analytics/fgs_utils__analytics_service.dart';
import 'package:fgs_utils/src/analytics/service_implementations/firebase_analytics/service_cases_implementations/fgs_utils__firebase_analytics__analytics__set_current_screen_for_analytics_service_case_implementation.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

/// Firebase analytics service.
class FGS_UTILS__FIREBASE_ANALYTICS__AnalyticsServiceImplementation
  implements FGS_UTILS__AnalyticsService {

  /// Constructor.
  FGS_UTILS__FIREBASE_ANALYTICS__AnalyticsServiceImplementation({
    required this.analytics,
    required this.setCurrentScreenForAnalyticsServiceCaseImplementation,
  });

  /// Firebase analytics instance.
  final FirebaseAnalytics analytics;
  /// Set current screen for analytics service case implementation.
  // ignore: lines_longer_than_80_chars
  final FGS_UTILS__FIREBASE_ANALYTICS__ANALYTICS__SetCurrentScreenForAnalyticsServiceCaseImplementation 
    setCurrentScreenForAnalyticsServiceCaseImplementation;
  
  @override
  Future<void> setCurrentScreenForAnalytics({
    required String screenName,
  }) async {
    await setCurrentScreenForAnalyticsServiceCaseImplementation.execute(
      service: this, 
      screenName: screenName,
    );
  }
}
