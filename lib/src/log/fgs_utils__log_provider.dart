import 'package:fgs_utils/src/log/provider_cases/fgs_utils__log_fatal_error_provider_case.dart';
import 'package:fgs_utils/src/log/provider_cases/fgs_utils__log_info_provider_case.dart';
import 'package:fgs_utils/src/log/provider_cases/fgs_utils__log_non_fatal_error_provider_case.dart';

/// Log provider.
abstract class FGS_UTILS__LogProvider
  implements
    FGS_UTILS__LogInfoProviderCase,
    FGS_UTIL__LogNonFatalErrorProviderCase,
    FGS_UTILS__LogFatalErrorProviderCase {}
