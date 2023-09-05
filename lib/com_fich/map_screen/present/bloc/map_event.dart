part of 'map_bloc.dart';

abstract class MapEvent extends Equatable {
  const MapEvent();
}

class LoadMapEvent extends MapEvent {
  @override
  List<Object?> get props => [];
}

class DrawPolygonMapEvent extends MapEvent {
  @override
  List<Object> get props => [];
}