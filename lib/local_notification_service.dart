



import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService {
  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
  FlutterLocalNotificationsPlugin();

  static void initialize() {
    // initializationSettings  for Android
    const InitializationSettings initializationSettings =
    InitializationSettings(
        android: AndroidInitializationSettings("@mipmap/ic_launcher"),
        iOS: DarwinInitializationSettings());

    _notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (data) async {
        print("onSelectNotification");
      },
    );
  }

  static void createAndDisplayNotification(RemoteMessage message) async {
    try {
      final id = DateTime.now().millisecondsSinceEpoch ~/ 1000;
      const NotificationDetails notificationDetails = NotificationDetails(
          android: AndroidNotificationDetails(
            "default_notification_channel_id",
            "pushnotificationappchannel",
            importance: Importance.max,
            priority: Priority.high,
          ),
          iOS: DarwinNotificationDetails());

      await _notificationsPlugin.show(
        id,
        message.notification!.title,
        message.notification!.body,
        notificationDetails,
        payload: message.data['_id'],
      );
    } on Exception catch (e) {
      print("notification initialze errror"+e.toString());
    }
  }
}