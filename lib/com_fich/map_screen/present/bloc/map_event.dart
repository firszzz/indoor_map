part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();
}

class LoadMapEvent extends MapEvent {
  const LoadMapEvent();

  @override
  List<Object> get props => [];
}

class DrawPolygonMapEvent extends MapEvent {
  const DrawPolygonMapEvent();

  @override
  List<Object> get props => [];
}