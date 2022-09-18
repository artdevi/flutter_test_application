import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/config/utils/constants.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';
import 'package:flutter_gen/gen_l10n/app_localications.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final Completer<YandexMapController> _completer = Completer();
  late YandexMapController _controller;

  void initController() async {
    _controller = await _completer.future;
  }

  @override
  void initState() {
    super.initState();
    initController();
  }

  final pins = [
    Placemark(
      point: const Point(latitude: 55.751244, longitude: 37.618423),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
    Placemark(
      point: const Point(latitude: 59.937500, longitude: 30.308611),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
    Placemark(
      point: const Point(latitude: 56.833332, longitude: 60.583332),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
    Placemark(
      point: const Point(latitude: 53.893009, longitude: 27.567444),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
    Placemark(
      point: const Point(latitude: 50.450001, longitude: 30.523333),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
    Placemark(
      point: const Point(
          latitude: 51.14765713724563, longitude: 71.44078430665141),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
    Placemark(
      point: const Point(latitude: 51.509865, longitude: -0.118092),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
    Placemark(
      point: const Point(latitude: 48.864716, longitude: 2.349014),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
    Placemark(
      point: const Point(latitude: 52.520008, longitude: 13.404954),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
    Placemark(
      point: const Point(latitude: 52.377956, longitude: 4.897070),
      style: const PlacemarkStyle(
        iconName: mapPinIconAsset,
        opacity: 1,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            YandexMap(
              onMapCreated: (controller) => {
                _completer.complete(controller),
                pins.forEach(controller.addPlacemark),
              },
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: _backButton(),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 25),
                child: _findMyPositionButton(
                  onTap: () async {
                    if (await Permission.location.request().isGranted) {
                      Position position = await Geolocator.getCurrentPosition();
                      final myPositionPoint = Point(
                          latitude: position.latitude,
                          longitude: position.longitude);
                      _controller.addPlacemark(Placemark(
                        point: myPositionPoint,
                        style: const PlacemarkStyle(
                          iconName: mapPinIconAsset,
                          opacity: 1,
                        ),
                      ));
                      _controller.move(point: myPositionPoint);
                    }
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _backButton() {
    return GestureDetector(
      child: Container(
        height: 37,
        width: 37,
        decoration: BoxDecoration(
          color: AppColors.primaryBlue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: const Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.white,
          size: 17,
        ),
      ),
      onTap: () {
        Navigator.of(context).pop();
      },
    );
  }

  Widget _findMyPositionButton({Function()? onTap}) {
    return GestureDetector(
      onTap: onTap,
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
        child: Text(
          AppLocalizations.of(context)!.findMyPosition,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
