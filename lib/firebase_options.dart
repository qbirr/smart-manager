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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyD8loRODnCwe9iYKYtPTU63nrbQE7-vgMs',
    appId: '1:539445051541:web:2c4eb719f85bbf87f15b9c',
    messagingSenderId: '539445051541',
    projectId: 'smart-pos-b934c',
    authDomain: 'smart-pos-b934c.firebaseapp.com',
    storageBucket: 'smart-pos-b934c.appspot.com',
    measurementId: 'G-FLJLJSTERB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDqZ6IkkNla4hevBQFIck52Snh9DilzS1s',
    appId: '1:539445051541:android:95508edc37b45c86f15b9c',
    messagingSenderId: '539445051541',
    projectId: 'smart-pos-b934c',
    storageBucket: 'smart-pos-b934c.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBS211br85MHMSDM_OpLthM9Z0TLSkdtoM',
    appId: '1:539445051541:ios:26a365bd66851f6af15b9c',
    messagingSenderId: '539445051541',
    projectId: 'smart-pos-b934c',
    storageBucket: 'smart-pos-b934c.appspot.com',
    iosBundleId: 'com.smartpos.smartManager',
  );
}
