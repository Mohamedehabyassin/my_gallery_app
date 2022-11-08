import 'package:flutter/material.dart';
import 'package:my_gallery_app/layout/landing_screen.dart';
import 'package:my_gallery_app/module/home_screen.dart';
import 'package:my_gallery_app/shared/provider/gallery_provider.dart';
import 'package:my_gallery_app/shared/provider/login_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider.value(value: LoginProvider()),
    ChangeNotifierProvider.value(value: GalleryProvider()),

  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Gallery App',
      debugShowCheckedModeBanner: false,
      home: LandingScreen(),
    );
  }
}
