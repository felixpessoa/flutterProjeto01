import 'package:flutter/material.dart';
import 'package:projeto01/pages/details_page.dart';
import 'package:projeto01/pages/home_page.dart';
import 'package:projeto01/pages/login_page.dart';
import 'package:projeto01/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (_) => const SplashPage(),
        '/login': (_) => LoginPage(),
        '/': (_) => const HomePage(),
        '/details': (_) => const DetailsPage(),
      },
    );
  }
}

