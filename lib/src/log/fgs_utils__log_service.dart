import 'package:fgs_utils/src/log/service_cases/fgs_utils__log_fatal_error_service_case.dart';
import 'package:fgs_utils/src/log/service_cases/fgs_utils__log_info_service_case.dart';
import 'package:fgs_utils/src/log/service_cases/fgs_utils__log_non_fatal_error_service_case.dart';

/// Log service.
abstract class FGS_UTILS__LogService
  implements
    FGS_UTILS__LogInfoServiceCase,
    FGS_UTIL__LogNonFatalErrorServiceCase,
    FGS_UTILS__LogFatalErrorServiceCase {}
