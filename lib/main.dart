import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:widgets_task/models/sign_in_response.dart';
import 'package:widgets_task/models/user_session.dart';
import 'package:widgets_task/utlis/http_configure.dart';
import 'widgets/login screen.dart';

Future<void> main() async {
  HttpOverrides.global = MyHttpOverrides();
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<AppUser>(AppUserAdapter());
  Hive.registerAdapter<UserSession>(UserSessionAdapter());
  await Hive.openBox('hiveStorage');
  await Hive.openBox<UserSession>('userSessionStorage');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyLoginScreen(),
    );
  }
}
