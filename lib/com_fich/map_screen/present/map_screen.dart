import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indoor_maps/com_fich/map_screen/present/bloc/map_bloc.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    final mapBloc = MapBloc()..add(LoadMapEvent());

    return BlocProvider<MapBloc>(
      create: (context) => mapBloc,
      child: BlocBuilder<MapBloc, MapState>(
        bloc: mapBloc,
        builder: (context, state) {
          if (state is MapLoading) {
            return const Scaffold(
              body: Center(
                child: CircularProgressIndicator(
                  color: Colors.black26,
                ),
              ),
            );
          }
          if (state is MapLoaded) {
            return Directionality(
                textDirection: TextDirection.ltr,
                child: Scaffold(
                  body: state.sfMapWithSettings
                )
            );
          }

          return Scaffold(
            body: Center(child: Text('Something went wrong: $state')),
          );
        },
      ),
    );

    /*return Directionality(
        textDirection: TextDirection.ltr,
        child: SfMaps(
          layers: [
            MapTileLayer(urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png')
          ],
        ),
    );*/
  }
}
