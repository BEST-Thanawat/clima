import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  //Location({latitude: this.latitude, longitude: this.longitude});

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
