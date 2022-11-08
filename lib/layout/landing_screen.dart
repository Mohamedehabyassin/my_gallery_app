import 'package:flutter/material.dart';
import 'package:my_gallery_app/module/home_screen.dart';
import 'package:my_gallery_app/module/log_in_screen.dart';
import 'package:my_gallery_app/shared/provider/login_provider.dart';
import 'package:provider/provider.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userLogin = Provider.of<LoginProvider>(context);
    return userLogin.isLogin ? const HomeScreen() : LogInScreen();
  }
}
