import 'package:fgs_utils/src/di_container/service_implementations/get_it/fgs_utils__get_it__di_container_service_implementation.dart';

/// Get instance service case implementation.
class FGS_UTILS__GET_IT__DI_CONTAINER__GetServiceCaseImplementation {
  /// Execute.
  T execute<T extends Object>({
    required FGS_UTILS__GET_IT__DiContainerServiceImplementation service,
  }) {
    return service.getIt.get<T>();
  }
}
