import 'package:geolocator/geolocator.dart';

void requestLocationPermission() async {
  LocationPermission permission = await Geolocator.requestPermission();
  switch (permission) {
    case LocationPermission.denied:
      // Permission denied by the user
      print('Location permission denied');
      // Handle the denial, e.g., show a message to the user
      break;
    case LocationPermission.deniedForever:
      // Permission denied permanently by the user
      print('Location permission denied permanently');
      // Prompt the user to go to settings and enable location permission manually
      // This is typically handled by showing a dialog or navigating to settings
      break;
    case LocationPermission.whileInUse:
    case LocationPermission.always:
      // Permission granted by the user
      print('Location permission granted');
      // Proceed with using location services
      // For example, start retrieving the user's location
      break;
    case LocationPermission.unableToDetermine:
      // Permission status is unknown, typically due to an error
      print('Location permission status unknown');
      // Handle the unknown status, e.g., show an error message
      break;
  }
}
