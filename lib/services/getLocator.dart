import 'package:geolocator/geolocator.dart';

Future<Position> getLocation() async {
  // Permission Location
  LocationPermission permission;

  permission = await Geolocator.checkPermission();

  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error('Location permission denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    return Future.error(
      'Location permission denied forever, please enable it in settings',
    );
  }

  return await Geolocator.getCurrentPosition();
}
