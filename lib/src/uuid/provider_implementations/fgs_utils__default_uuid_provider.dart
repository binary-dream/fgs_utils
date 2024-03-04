import 'package:fgs_utils/src/uuid/fgs_utils__uuid_provider.dart';
import 'package:uuid/uuid.dart';

/// Uuid provider.
class FGS_UTILS__DefaultUuidProvider
  implements 
    FGS_UTILS__UuidProvider {

  /// Constructor.
  FGS_UTILS__DefaultUuidProvider({
    required this.uuid,
  });

  /// Uuid.
  final Uuid uuid;
  
  @override
  String v4() {
    return uuid.v4();
  }
}
