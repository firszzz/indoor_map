part of 'map_bloc.dart';

abstract class MapState extends Equatable {
  const MapState();
}

class MapLoading extends MapState {
  @override
  List<Object> get props => [];
}

class MapLoaded extends MapState {
  @override
  List<Object> get props => [];
}

class MapPolygonDrawn extends MapState {
  @override
  List<Object> get props => [];
}