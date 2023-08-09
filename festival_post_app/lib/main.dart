import 'package:festival_post_app/Utils/route_utils.dart';
import 'package:festival_post_app/views/screens/Editor_Page.dart';
import 'package:festival_post_app/views/screens/Home_Page.dart';
import 'package:festival_post_app/views/screens/Splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: MyRoutes.Splash_screen,
      routes: {
        MyRoutes.HomePage: (context) => const HomePage(),
        MyRoutes.PostEditor: (context) => const EditorPage(),
        MyRoutes.Splash_screen: (context) => const SplashScreen(),
      },
    );
  }
}
