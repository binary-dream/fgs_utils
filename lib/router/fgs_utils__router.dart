import 'package:go_router/go_router.dart';

import 'fgs_utils__route.dart';

class FGS_UTILS__Router {
  List<FGS_UTILS__Route> routes;
  String initialLocation;
  
  FGS_UTILS__Router({
    required this.routes,
    required this.initialLocation,
  });

  GoRouter toGoRouter() {
    return GoRouter(
      routes: routes.map((route) => route.toGoRoute()).toList(),
      initialLocation: initialLocation,
    );
  }

  FGS_UTILS__Router deepDelete(String routeNameToBeDeleted) {
    var newRoutes = <FGS_UTILS__Route>[];
    for(var route in routes) {
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
          )
        );
      }
    }
    return FGS_UTILS__Router(
      initialLocation: initialLocation,
      routes: newRoutes,
    );
  }

  static FGS_UTILS__Router deepMerge(FGS_UTILS__Router routerA, FGS_UTILS__Router routerB) {
    var deepMergedInitialLocation = routerB.initialLocation;
    var deepMergedRoutes = FGS_UTILS__Route.deepMerge(routerA.routes, routerB.routes);
    return FGS_UTILS__Router(
      routes:  deepMergedRoutes,
      initialLocation: deepMergedInitialLocation,
    );
  }
}
