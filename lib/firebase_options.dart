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
    apiKey: 'AIzaSyDo_y6sf_Msu4NWOxWUqN9b2ano8EMUNRI',
    appId: '1:591208915910:web:7267e9444efeb0a92948c7',
    messagingSenderId: '591208915910',
    projectId: 'flutter-push-notificatio-1ce54',
    authDomain: 'flutter-push-notificatio-1ce54.firebaseapp.com',
    storageBucket: 'flutter-push-notificatio-1ce54.appspot.com',
    measurementId: 'G-SN60WXM2NZ',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDbsJiiy0wqjqHGafkPVbgBZ6IMrZZxm-A',
    appId: '1:591208915910:android:43dbd1df6324a04d2948c7',
    messagingSenderId: '591208915910',
    projectId: 'flutter-push-notificatio-1ce54',
    storageBucket: 'flutter-push-notificatio-1ce54.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXKfG9q1L24YVFp6fa4bJq4M4hbukquoE',
    appId: '1:591208915910:ios:f27a3c4d44dc39802948c7',
    messagingSenderId: '591208915910',
    projectId: 'flutter-push-notificatio-1ce54',
    storageBucket: 'flutter-push-notificatio-1ce54.appspot.com',
    iosClientId: '591208915910-sfcsa5pnps3qpivo3pfhkm395unep4ph.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDXKfG9q1L24YVFp6fa4bJq4M4hbukquoE',
    appId: '1:591208915910:ios:f27a3c4d44dc39802948c7',
    messagingSenderId: '591208915910',
    projectId: 'flutter-push-notificatio-1ce54',
    storageBucket: 'flutter-push-notificatio-1ce54.appspot.com',
    iosClientId: '591208915910-sfcsa5pnps3qpivo3pfhkm395unep4ph.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterApplication1',
  );
}
