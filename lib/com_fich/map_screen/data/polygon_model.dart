import 'package:syncfusion_flutter_maps/maps.dart';

class PolygonModel {
  List<MapLatLng> polygonLocation;
  String polygonName;

  PolygonModel({
    required this.polygonLocation,
    required this.polygonName
  });
}