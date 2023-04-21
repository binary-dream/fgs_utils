
import 'package:uuid/uuid.dart';

import 'fgs_utils__uuid_service_cases.dart';

class FGS_UTILS__UuidService implements FGS_UTILS__UuidServiceCases {
  final Uuid uuid;

  FGS_UTILS__UuidService({
    required this.uuid
  });
  
  @override
  String v1() {
    return uuid.v1();
  }

  @override
  String v4() {
    return uuid.v4();
  }
}
