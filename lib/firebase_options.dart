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
    apiKey: 'AIzaSyDp573tbYRHhRH7k9iP7de800rmhICOjyY',
    appId: '1:840313516203:web:a7d8583a71d6475fbb87ee',
    messagingSenderId: '840313516203',
    projectId: 'taskproject-cd950',
    authDomain: 'taskproject-cd950.firebaseapp.com',
    storageBucket: 'taskproject-cd950.appspot.com',
    measurementId: 'G-QS3D864DCG',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA2WjllJFct6Y3WKV0B2lIlA-xeaYJbS9U',
    appId: '1:840313516203:android:444a64dfe6079ac4bb87ee',
    messagingSenderId: '840313516203',
    projectId: 'taskproject-cd950',
    storageBucket: 'taskproject-cd950.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBq7QwnVjMjyVKZHA0_9uuj9pkTI0LNkkI',
    appId: '1:840313516203:ios:34d7969097f4ba8abb87ee',
    messagingSenderId: '840313516203',
    projectId: 'taskproject-cd950',
    storageBucket: 'taskproject-cd950.appspot.com',
    iosBundleId: 'com.example.task',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyBq7QwnVjMjyVKZHA0_9uuj9pkTI0LNkkI',
    appId: '1:840313516203:ios:b60a0d7a550b57c1bb87ee',
    messagingSenderId: '840313516203',
    projectId: 'taskproject-cd950',
    storageBucket: 'taskproject-cd950.appspot.com',
    iosBundleId: 'com.example.task.RunnerTests',
  );
}
