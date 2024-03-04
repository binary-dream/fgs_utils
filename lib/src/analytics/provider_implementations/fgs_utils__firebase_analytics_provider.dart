import 'package:fgs_utils/src/analytics/fgs_utils__analytics_provider.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

/// Firebase analytics provider.
class FGS_UTILS__FirebaseAnalyticsProvider
  implements FGS_UTILS__AnalyticsProvider {

  /// Constructor.
  FGS_UTILS__FirebaseAnalyticsProvider({
    required this.analytics,
  });

  /// Firebase analytics instance.
  final FirebaseAnalytics analytics;

  @override
  Future<void> setCurrentScreenForAnalytics({
    required String screenName,
  }) async {
    await analytics.logScreenView(screenName: screenName);
  }
}
