import 'package:fgs_utils/src/uuid/fgs_utils__uuid_service.dart';
import 'package:fgs_utils/src/uuid/service_implementations/default/service_cases_implementations/fgs_utils__default__uuid__generate_v1_uuid_service_case_implementation.dart';
import 'package:fgs_utils/src/uuid/service_implementations/default/service_cases_implementations/fgs_utils__default__uuid__generate_v4_uuid_service_case_implementation.dart';
import 'package:uuid/uuid.dart';

/// Uuid service.
class FGS_UTILS__DEFAULT__UuidServiceImplementation
  implements 
    FGS_UTILS__UuidService {

  /// Constructor.
  FGS_UTILS__DEFAULT__UuidServiceImplementation({
    required this.uuid,
    required this.generateV1UuidServiceCaseImplementation,
    required this.generateV4UuidServiceCaseImplementation,
  });

  /// Uuid.
  final Uuid uuid;
  /// Generate v1 uuid service case implementation.
  final FGS_UTILS__DEFAULT__UUID__GenerateV1UuidServiceCaseImplementation 
    generateV1UuidServiceCaseImplementation;
  /// Generate v4 uuid service case implementation.
  final FGS_UTILS__DEFAULT__UUID__GenerateV4UuidServiceCaseImplementation 
    generateV4UuidServiceCaseImplementation;

  @override
  String generateV1Uuid() {
    return generateV1UuidServiceCaseImplementation.execute(service: this);
  }
  
  @override
  String generateV4Uuid() {
    return generateV4UuidServiceCaseImplementation.execute(service: this);
  }
}
