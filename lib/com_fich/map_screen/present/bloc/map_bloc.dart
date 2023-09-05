import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  MapBloc() : super(MapLoading()) {
    on<LoadMapEvent>(_onLoadMap);
    on<DrawPolygonMapEvent>(_onDrawPolygonMap);
  }

  Future<void> _onLoadMap(LoadMapEvent event, Emitter<MapState> emit) async {
    // await Future.delayed(const Duration(seconds: 1)); // TODO: Не забыть убрать потом xD

    MapZoomPanBehavior zoomPanBehavior = MapZoomPanBehavior(
      enableDoubleTapZooming: true,
      zoomLevel: 15,
      minZoomLevel: 5,
      focalLatLng: const MapLatLng(43.102592547117155, 131.9172953240419),
      maxZoomLevel: 19.5,
    );

    SfMaps sfMapWithSetting = SfMaps(
      layers: [
        MapTileLayer(
          key: UniqueKey(),
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          zoomPanBehavior: zoomPanBehavior,
          controller: MapTileLayerController(),
          sublayers: [
            MapPolygonLayer(polygons: {})
          ],
        )
      ],
    );

    emit(MapLoaded(sfMapWithSettings: sfMapWithSetting));
  }

  Future<void> _onDrawPolygonMap(DrawPolygonMapEvent event, Emitter<MapState> emit) async {
    emit(const MapPolygonDrawn());
  }
}
