// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDvnP47A0aynKP2JrQt6CsEEJ1tDdTDR7M',
    appId: '1:756339328171:web:ec3afc4ee1c08b59fc23ee',
    messagingSenderId: '756339328171',
    projectId: 'pesquisa-opiniao-9b2cd',
    authDomain: 'pesquisa-opiniao-9b2cd.firebaseapp.com',
    storageBucket: 'pesquisa-opiniao-9b2cd.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBCtkkvHC20HGRpUuBFaBEh0C8GSP_S_EA',
    appId: '1:756339328171:android:90985dd55bbe1d19fc23ee',
    messagingSenderId: '756339328171',
    projectId: 'pesquisa-opiniao-9b2cd',
    storageBucket: 'pesquisa-opiniao-9b2cd.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB6pO9-TuBmis2gOO6GJW3SF5HaIoYw0LU',
    appId: '1:756339328171:ios:a0a1c7de8a492a9efc23ee',
    messagingSenderId: '756339328171',
    projectId: 'pesquisa-opiniao-9b2cd',
    storageBucket: 'pesquisa-opiniao-9b2cd.firebasestorage.app',
    iosBundleId: 'com.example.pesquisaOpiniao',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB6pO9-TuBmis2gOO6GJW3SF5HaIoYw0LU',
    appId: '1:756339328171:ios:a0a1c7de8a492a9efc23ee',
    messagingSenderId: '756339328171',
    projectId: 'pesquisa-opiniao-9b2cd',
    storageBucket: 'pesquisa-opiniao-9b2cd.firebasestorage.app',
    iosBundleId: 'com.example.pesquisaOpiniao',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDvnP47A0aynKP2JrQt6CsEEJ1tDdTDR7M',
    appId: '1:756339328171:web:39056abc91765f76fc23ee',
    messagingSenderId: '756339328171',
    projectId: 'pesquisa-opiniao-9b2cd',
    authDomain: 'pesquisa-opiniao-9b2cd.firebaseapp.com',
    storageBucket: 'pesquisa-opiniao-9b2cd.firebasestorage.app',
  );
}
