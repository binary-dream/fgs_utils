import 'package:fgs_utils_v1/src/router/fgs_utils__route.dart';
import 'package:go_router/go_router.dart';

/// Router.
class FGS_UTILS__Router {
  
  /// Constructor.
  FGS_UTILS__Router({
    required List<FGS_UTILS__Route> routes,
    required String initialLocation,
  }) : _initialLocation = initialLocation, _routes = routes;

  /// Construct from two routers deep merged.
  factory FGS_UTILS__Router.deepMerge({
    required FGS_UTILS__Router routerA, 
    required FGS_UTILS__Router routerB,
  }) {
    final deepMergedInitialLocation = routerB._initialLocation;
    final deepMergedRoutes = FGS_UTILS__Route.deepMerge(
      routerA._routes, 
      routerB._routes,
    );
    return FGS_UTILS__Router(
      routes:  deepMergedRoutes,
      initialLocation: deepMergedInitialLocation,
    );
  }

  final List<FGS_UTILS__Route> _routes;
  final String _initialLocation;

  /// To GoRouter.
  GoRouter toGoRouter() {
    return GoRouter(
      routes: _routes.map((route) => route.toGoRoute()).toList(),
      initialLocation: _initialLocation,
    );
  }

  /// Deep delete a route.
  FGS_UTILS__Router deepDelete(String routeNameToBeDeleted) {
    final newRoutes = <FGS_UTILS__Route>[];
    for(final route in _routes) {
      if(route.name != routeNameToBeDeleted) {
        newRoutes.add(
          FGS_UTILS__Route(
            path: route.path,
            name: route.name,
            builder: route.builder,
            routes: route.routes
              .where((route) => route.name != routeNameToBeDeleted)
              .map((route) => route.deepDelete(routeNameToBeDeleted))
              .toList(),
          ),
        );
      }
    }
    return FGS_UTILS__Router(
      initialLocation: _initialLocation,
      routes: newRoutes,
    );
  }
}
