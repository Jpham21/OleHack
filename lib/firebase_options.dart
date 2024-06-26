// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAZ_rbtiwPB61jURrCQINaXOps4xDxVVEM',
    appId: '1:616564023756:web:9505dc62fde98beee5bd69',
    messagingSenderId: '616564023756',
    projectId: 'cspiredata',
    authDomain: 'cspiredata.firebaseapp.com',
    storageBucket: 'cspiredata.appspot.com',
    measurementId: 'G-8L7V394KD9',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBx1egF3jkd-sQHZbHNxEYzBfqzoPuCWKg',
    appId: '1:616564023756:android:d3d0f25885d94b62e5bd69',
    messagingSenderId: '616564023756',
    projectId: 'cspiredata',
    storageBucket: 'cspiredata.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCjhZ6w798Sg2iZ2ghJPWu-UiB2fgi1VhU',
    appId: '1:616564023756:ios:c666d963166cd01fe5bd69',
    messagingSenderId: '616564023756',
    projectId: 'cspiredata',
    storageBucket: 'cspiredata.appspot.com',
    iosBundleId: 'com.example.networkData',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCjhZ6w798Sg2iZ2ghJPWu-UiB2fgi1VhU',
    appId: '1:616564023756:ios:c7f06a55bfed25abe5bd69',
    messagingSenderId: '616564023756',
    projectId: 'cspiredata',
    storageBucket: 'cspiredata.appspot.com',
    iosBundleId: 'com.example.networkData.RunnerTests',
  );
}
