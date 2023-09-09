import 'polygon_model.dart';
import 'floor_layer.dart';

class IndoorMap {
  PolygonModel mainLayer;
  List<FloorLayer> layerMap;

  IndoorMap({
    required this.layerMap,
    required this.mainLayer
  });

  List<FloorLayer> sortFloors(List<FloorLayer> floors) {
    floors.sort((a, b) => b.floorNum.compareTo(a.floorNum));

    return floors;
  }
}