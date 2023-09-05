part of 'map_bloc.dart';

abstract class MapState extends Equatable {
  const MapState();
}

class MapLoading extends MapState {
  @override
  List<Object> get props => [];
}

class MapLoaded extends MapState {
  final MapLatLng? userGeolocation;
  final SfMaps sfMapWithSettings;

  const MapLoaded({ this.userGeolocation, required this.sfMapWithSettings });

  @override
  List<Object?> get props => [userGeolocation, sfMapWithSettings];
}

class MapPolygonDrawn extends MapState {
  final MapLatLng? polygonGeolocation;

  const MapPolygonDrawn({ this.polygonGeolocation });

  @override
  List<Object?> get props => [polygonGeolocation];
}