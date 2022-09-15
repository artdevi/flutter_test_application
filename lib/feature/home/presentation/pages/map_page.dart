import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final markers = [
    PlacemarkMapObject(
      mapId: const MapObjectId('Moscow'),
      point: const Point(latitude: 55.751244, longitude: 37.618423),
      icon: PlacemarkIcon.single(
        PlacemarkIconStyle(
          image: BitmapDescriptor.fromAssetImage('assets/icons/marker.png'),
        ),
      ),
    ),
    PlacemarkMapObject(
      mapId: const MapObjectId('St_Peterburg'),
      point: const Point(latitude: 59.937500, longitude: 30.308611),
    ),
    PlacemarkMapObject(
      mapId: const MapObjectId('Yekaterinburg'),
      point: const Point(latitude: 56.833332, longitude: 60.583332),
    ),
    PlacemarkMapObject(
      mapId: const MapObjectId('Minsk'),
      point: const Point(latitude: 53.893009, longitude: 27.567444),
    ),
    PlacemarkMapObject(
      mapId: const MapObjectId('Kyiv'),
      point: const Point(latitude: 50.450001, longitude: 30.523333),
    ),
    PlacemarkMapObject(
      mapId: const MapObjectId('Nur-Sultan'),
      point: const Point(
          latitude: 51.14765713724563, longitude: 71.44078430665141),
    ),
    PlacemarkMapObject(
      mapId: const MapObjectId('London'),
      point: const Point(latitude: 51.509865, longitude: -0.118092),
    ),
    PlacemarkMapObject(
      mapId: const MapObjectId('Paris'),
      point: const Point(latitude: 48.864716, longitude: 2.349014),
    ),
    PlacemarkMapObject(
      mapId: const MapObjectId('Berlin'),
      point: const Point(latitude: 52.520008, longitude: 13.404954),
    ),
    PlacemarkMapObject(
      mapId: const MapObjectId('Amsterdam'),
      point: const Point(latitude: 52.377956, longitude: 4.897070),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: YandexMap(
                mapObjects: markers,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _findMyPositionButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 54,
        width: 326,
        padding: const EdgeInsets.only(left: 45, right: 38),
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 27),
        decoration: BoxDecoration(
          color: AppColors.primaryOrange,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Text(
          'Find my position',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
