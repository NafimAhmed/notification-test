



import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

import 'local_notification_service.dart';

Future<void> backgoundHandler(RemoteMessage message) async {
  print("->"+message.data.toString());
  print("-->"+message.notification!.title.toString());
}

class NotificationService{

  // static var userToken = ''.obs;


  static Future<void> initialize() async {
    NotificationSettings settings = await FirebaseMessaging.instance.requestPermission();



    if(settings.authorizationStatus == AuthorizationStatus.authorized){

      log("Notification Initializer");

      FirebaseMessaging.onBackgroundMessage(backgoundHandler);
      FirebaseMessaging.onMessageOpenedApp.listen((message) {
        log("message opened ${message.notification!.title}");
        LocalNotificationService.createAndDisplayNotification(message);

      });

      FirebaseMessaging.onMessage.listen((message) {
        log("message received ${message.notification!.title}");
        LocalNotificationService.createAndDisplayNotification(message);
      });



      log("Notification Initializer 2");
    }

  }

  static Future<void> getUserToken() async {
    final userToken = await FirebaseMessaging.instance.getToken();
    print('Tokkkkkkkkkkkkkkkkkkkken '+userToken.toString());
  }
}