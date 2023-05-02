import 'package:fgs_utils/src/analytics/fgs_utils__analytics_service_cases.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

/// Firebase analytics service.
class FGS_UTILS__FirebaseAnalyticsService 
  implements FGS_UTILS__AnalyticsServiceCases {

  /// Constructor.
  FGS_UTILS__FirebaseAnalyticsService({
    required FirebaseAnalytics analytics,
  }): _analytics = analytics;

  final FirebaseAnalytics _analytics;
  
  @override
  Future<void> setCurrentScreen({required String screenName}) async {
    await _analytics.setCurrentScreen(screenName: screenName);
  }
}
