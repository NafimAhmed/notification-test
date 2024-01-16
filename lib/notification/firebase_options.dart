



import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

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
    apiKey: 'AIzaSyBWhT7bzpoGZk-dIgWIWdKqEp9qHn_U5xo',
    appId: '1:282681658713:android:61eafd5f1887649b5b1048',
    messagingSenderId: '282681658713',
    projectId: 'push-notification-9d78e',

  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBWhT7bzpoGZk-dIgWIWdKqEp9qHn_U5xo',
    appId: '1:282681658713:android:61eafd5f1887649b5b1048',
    messagingSenderId: '282681658713',
    projectId: 'push-notification-9d78e',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAEeArMQwsXrxa6nZK48jgUbLbOD7LwmjY',
    appId: '1:484796044586:ios:ce33e7f74339576da17a53',
    messagingSenderId: '484796044586',
    projectId: 'e-book-2089e',
    storageBucket: 'e-book-2089e.appspot.com',
    androidClientId: '484796044586-2uirakjgaagilnlf7s0c5ou5167magdk.apps.googleusercontent.com',
    iosClientId: '484796044586-km64qqqebogmfem3hf36ugdni8urajts.apps.googleusercontent.com',
    iosBundleId: 'com.ptvl.moef.eiebook',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAEeArMQwsXrxa6nZK48jgUbLbOD7LwmjY',
    appId: '1:484796044586:ios:117ec6dac04251efa17a53',
    messagingSenderId: '484796044586',
    projectId: 'e-book-2089e',
    storageBucket: 'e-book-2089e.appspot.com',
    androidClientId: '484796044586-2uirakjgaagilnlf7s0c5ou5167magdk.apps.googleusercontent.com',
    iosClientId: '484796044586-ah76qf5e4uijqa2g1a9etrn3oo18s37v.apps.googleusercontent.com',
    iosBundleId: 'com.example.ptvlmoefbook.eBook',
  );
}