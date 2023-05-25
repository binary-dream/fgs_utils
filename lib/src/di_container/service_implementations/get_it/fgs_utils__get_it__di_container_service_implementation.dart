import 'package:fgs_utils/src/di_container/fgs_utils__di_container_service.dart';
import 'package:fgs_utils/src/di_container/service_implementations/get_it/service_cases_implementations/fgs_utils__get_it__di_container__get_service_case_implementation.dart';
import 'package:get_it/get_it.dart';

/// Get it di container service implementation.
class FGS_UTILS__GET_IT__DiContainerServiceImplementation 
  implements 
    FGS_UTILS__DiContainerService {
  
  /// Constructor.
  FGS_UTILS__GET_IT__DiContainerServiceImplementation({
    required this.getIt,
    required this.getServiceCaseImplementation,
  });
 
  /// Get it instance.
  final GetIt getIt;
  /// Get instance service case implementation.
  final FGS_UTILS__GET_IT__DI_CONTAINER__GetServiceCaseImplementation 
    getServiceCaseImplementation;
 
  @override
  T get<T extends Object>() {
    return getServiceCaseImplementation.execute(service: this);
  }
}
