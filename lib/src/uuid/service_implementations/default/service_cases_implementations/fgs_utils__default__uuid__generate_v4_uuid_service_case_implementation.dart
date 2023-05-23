import 'package:fgs_utils/src/uuid/service_implementations/default/fgs_utils__default__uuid_service_implementation.dart';

/// Generate v4 uuid service case implementation.
class FGS_UTILS__DEFAULT__UUID__GenerateV4UuidServiceCaseImplementation {
  /// Execute.
  String execute({
    required FGS_UTILS__DEFAULT__UuidServiceImplementation service,
  }) {
    return service.uuid.v4();
  }
}