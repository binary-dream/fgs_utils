
import 'package:fgs_utils/src/uuid/fgs_utils__uuid_service_cases.dart';
import 'package:uuid/uuid.dart';

/// Uuid service.
class FGS_UTILS__UuidService implements FGS_UTILS__UuidServiceCases {

  /// Constructor.
  FGS_UTILS__UuidService({
    required Uuid uuid,
  }) : _uuid = uuid;

  final Uuid _uuid;
  
  @override
  String v1() {
    return _uuid.v1();
  }

  @override
  String v4() {
    return _uuid.v4();
  }
}
