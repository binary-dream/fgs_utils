
import 'package:go_router/go_router.dart';

class FGS_UTILS__Route {
  String path;
  String name;
  GoRouterWidgetBuilder builder;
  List<FGS_UTILS__Route> routes;
  
  FGS_UTILS__Route({
    required this.path,
    required this.name,
    required this.builder,
    this.routes = const [],
  });

  GoRoute toGoRoute() {
    return GoRoute(
      path: path,
      name: name,
      builder: builder,
      routes: routes.map((route) => route.toGoRoute()).toList(),
    );
  }

  static List<FGS_UTILS__Route> deepMerge(List<FGS_UTILS__Route> routesA, List<FGS_UTILS__Route> routesB) {
    var deepMergedRoutes = <FGS_UTILS__Route>[];
    var routesANames = routesA.map((route) => route.name).toSet();
    var routesBNames = routesB.map((route) => route.name).toSet();

    for(var route in routesA) {
      if(routesBNames.contains(route.name)) {
        deepMergedRoutes.add(
          FGS_UTILS__Route(
            path: route.path,
            name: route.name,
            builder: route.builder,
            routes: deepMerge(route.routes, routesB.firstWhere((routeB) => routeB.name == route.name).routes),
          )
        );
      } else {
        deepMergedRoutes.add(route);
      }
    }

    for(var route in routesB) {
      if(!routesANames.contains(route.name)) {
        deepMergedRoutes.add(route);
      }
    }

    return deepMergedRoutes;
  }

  FGS_UTILS__Route deepDelete(String routeNameToBeDeleted) {
    return FGS_UTILS__Route(
      path: path, 
      name: name, 
      builder: builder,
      routes: routes
        .where((route) => route.name != routeNameToBeDeleted)
        .map((route) => route.deepDelete(routeNameToBeDeleted))
        .toList()
    );
  }
}
