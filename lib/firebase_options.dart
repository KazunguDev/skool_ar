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
    apiKey: 'AIzaSyDOzxwB4p1leTNqhI4rKblXTOE3cEDhzwQ',
    appId: '1:739843615301:web:7a4f1c7ff1c68cfda3512c',
    messagingSenderId: '739843615301',
    projectId: 'skoolar-4be32',
    authDomain: 'skoolar-4be32.firebaseapp.com',
    storageBucket: 'skoolar-4be32.appspot.com',
    measurementId: 'G-2205E1JN7J',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDxifRj1HZFfwAckB-VSSnjR5knHGuvcOw',
    appId: '1:739843615301:android:549d3fc8da4dcf91a3512c',
    messagingSenderId: '739843615301',
    projectId: 'skoolar-4be32',
    storageBucket: 'skoolar-4be32.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBJowC_5Q3XCQzsEv3BbQPt8mkEzZhf860',
    appId: '1:739843615301:ios:3f35c9672cf478f7a3512c',
    messagingSenderId: '739843615301',
    projectId: 'skoolar-4be32',
    storageBucket: 'skoolar-4be32.appspot.com',
    iosBundleId: 'com.kazungudev.skoolAr',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBJowC_5Q3XCQzsEv3BbQPt8mkEzZhf860',
    appId: '1:739843615301:ios:5f4f99b676a0dcf2a3512c',
    messagingSenderId: '739843615301',
    projectId: 'skoolar-4be32',
    storageBucket: 'skoolar-4be32.appspot.com',
    iosBundleId: 'com.kazungudev.skoolAr.RunnerTests',
  );
}