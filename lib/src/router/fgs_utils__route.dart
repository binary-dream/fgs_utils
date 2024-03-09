
import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

/// Route.
class FGS_UTILS__Route {
  /// Constructor.
  FGS_UTILS__Route({
    required this.path,
    required this.name,
    required this.builder,
    this.routes = const [],
    this.redirect,
  });

  /// Path.
  final String path;
  /// Name.
  final String name;
  /// Builder.
  final GoRouterWidgetBuilder builder;
  /// Routes.
  final List<FGS_UTILS__Route> routes;
  /// Redirect.
  final FutureOr<String?> Function(BuildContext, GoRouterState)? redirect;

  /// To GoRoute.
  GoRoute toGoRoute() {
    return GoRoute(
      path: path,
      name: name,
      builder: builder,
      redirect: redirect,
      routes: routes.map((route) => route.toGoRoute()).toList(),
    );
  }

  /// Deep merge two lists of routes.
  static List<FGS_UTILS__Route> deepMerge(
    List<FGS_UTILS__Route> routesA, 
    List<FGS_UTILS__Route> routesB,
  ) {
    final deepMergedRoutes = <FGS_UTILS__Route>[];
    final routesANames = routesA.map((route) => route.name).toSet();
    final routesBNames = routesB.map((route) => route.name).toSet();

    for(final route in routesA) {
      if(routesBNames.contains(route.name)) {
        deepMergedRoutes.add(
          FGS_UTILS__Route(
            path: route.path,
            name: route.name,
            builder: route.builder,
            routes: deepMerge(
              route.routes, 
              routesB.firstWhere(
                (routeB) => routeB.name == route.name,
              ).routes,
            ),
          ),
        );
      } else {
        deepMergedRoutes.add(route);
      }
    }

    for(final route in routesB) {
      if(!routesANames.contains(route.name)) {
        deepMergedRoutes.add(route);
      }
    }

    return deepMergedRoutes;
  }

  /// Deep delete a route.
  FGS_UTILS__Route deepDelete(String routeNameToBeDeleted) {
    return FGS_UTILS__Route(
      path: path, 
      name: name, 
      builder: builder,
      routes: routes
        .where((route) => route.name != routeNameToBeDeleted)
        .map((route) => route.deepDelete(routeNameToBeDeleted))
        .toList(),
    );
  }
}
