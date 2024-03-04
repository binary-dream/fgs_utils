import 'package:fgs_utils/src/di_container/fgs_utils__di_container_provider.dart';
import 'package:get_it/get_it.dart';

/// Get it di container provider.
class FGS_UTILS__GetItDiContainerProvider 
  implements 
    FGS_UTILS__DiContainerProvider {
  
  /// Constructor.
  FGS_UTILS__GetItDiContainerProvider({
    required this.getIt,
  });
 
  /// Get it instance.
  final GetIt getIt;

 
  @override
  T get<T extends Object>() {
    return getIt.get<T>();
  }
}
