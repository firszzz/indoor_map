// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:indoor_maps/com_fich/main_screen/main_screen.dart' as _i1;
import 'package:indoor_maps/com_fich/map_screen/present/map_screen.dart' as _i2;
import 'package:indoor_maps/com_fich/profile_screen/present/profile_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    MainRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.MainScreen(),
      );
    },
    MapRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.MapScreen(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.ProfileScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.MainScreen]
class MainRoute extends _i4.PageRouteInfo<void> {
  const MainRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MainRoute.name,
          initialChildren: children,
        );

  static const String name = 'MainRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.MapScreen]
class MapRoute extends _i4.PageRouteInfo<void> {
  const MapRoute({List<_i4.PageRouteInfo>? children})
      : super(
          MapRoute.name,
          initialChildren: children,
        );

  static const String name = 'MapRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.ProfileScreen]
class ProfileRoute extends _i4.PageRouteInfo<void> {
  const ProfileRoute({List<_i4.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
