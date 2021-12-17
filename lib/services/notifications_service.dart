import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationService {
  static const channelId = '123';

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  final AndroidNotificationDetails _androidNotificationDetails =
      const AndroidNotificationDetails(channelId, "Canal local",
          priority: Priority.max, importance: Importance.max);

  Future<void> init() async {
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings('@mipmap/ic_launcher');

    InitializationSettings initializationSettings = InitializationSettings(
        android: androidInitializationSettings, iOS: null, macOS: null);

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> showNotification(String title, String body) async {
    await flutterLocalNotificationsPlugin.show(0, title, body,
        NotificationDetails(android: _androidNotificationDetails));
  }

  Future<void> cancelNotificacion(int id) async {
    await flutterLocalNotificationsPlugin.cancel(id);
  }

  Future<void> cancelAllNotificacions() async {
    await flutterLocalNotificationsPlugin.cancelAll();
  }
}
