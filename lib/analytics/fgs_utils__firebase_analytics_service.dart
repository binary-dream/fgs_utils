import 'package:firebase_analytics/firebase_analytics.dart';

import 'fgs_utils__analytics_service_cases.dart';

class FGS_UTILS__FirebaseAnalyticsService implements FGS_UTILS__AnalyticsServiceCases {
  final FirebaseAnalytics analytics;

  FGS_UTILS__FirebaseAnalyticsService({
    required this.analytics
  });
  
  @override
  Future<void> setCurrentScreen({required String screenName}) async {
    await analytics.setCurrentScreen(screenName: screenName);
  }
}
