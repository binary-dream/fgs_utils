import 'package:fgs_utils/src/uuid/service_cases/fgs_utils__generate_v1_uuid_service_case.dart';
import 'package:fgs_utils/src/uuid/service_cases/fgs_utils__generate_v4_uuid_service_case.dart';

/// Uuid service.
abstract class FGS_UTILS__UuidService
  implements
    FGS_UTILS__GenerateV1UuidServiceCase,
    FGS_UTILS__GenerateV4UuidServiceCase {}
