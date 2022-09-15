import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/common/app_colors.dart';
import 'package:flutter_application_1/feature/cart/presentation/pages/cart.dart';
import 'package:flutter_application_1/feature/details/presentation/pages/detail_page.dart';
import 'package:flutter_application_1/service_locator.dart' as di;

import 'feature/home/presentation/pages/home_page.dart';

bool _initialURILinkHandled = false;

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  await Firebase.initializeApp();

  FirebaseMessaging messaging = FirebaseMessaging.instance;

  NotificationSettings settings = await messaging.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );

  FirebaseMessaging.onMessageOpenedApp.listen((event) => print("Clicked"));

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => HomePage(),
        '/home': (context) => HomePage(),
        '/details': (context) => DetailsPage(),
        '/cart': (context) => CartPage(),
      },
      theme: ThemeData(
        fontFamily: 'Mark Pro',
        backgroundColor: AppColors.mainBackground,
        scaffoldBackgroundColor: AppColors.mainBackground,
      ),
    );
  }
}
