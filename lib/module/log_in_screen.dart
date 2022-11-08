import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:my_gallery_app/shared/components/common_components.dart';
import 'package:my_gallery_app/shared/provider/login_provider.dart';
import 'package:provider/provider.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var userLogin = Provider.of<LoginProvider>(context);
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
            child: Stack(
      children: [
        Positioned(
            left: -mediaQuery.width / 3,
            bottom: mediaQuery.height / 20,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Image.asset(
                "assets/images/Ellipse 1629.png",
              ),
            )),
        Positioned(
            left: -mediaQuery.width / 3,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 5, sigmaY: 5, tileMode: TileMode.clamp),
              child: Image.asset(
                "assets/images/Ellipse 1628.png",
              ),
            )),
        Positioned(
            top: -mediaQuery.height / 15,
            right: -mediaQuery.width / 2,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Image.asset(
                "assets/images/Ellipse 1627.png",
              ),
            )),
        Positioned(
            left: mediaQuery.width / 7,
            top: mediaQuery.height / 2.6,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Image.asset(
                "assets/images/Rectangle 12.png",
              ),
            )),
        Positioned(
            right: mediaQuery.width * 0.04,
            top: mediaQuery.height * 0.33,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 2, sigmaY: 2, tileMode: TileMode.decal),
              child: Image.asset(
                "assets/images/Ellipse 33.png",
              ),
            )),
        Positioned(
            right: mediaQuery.width * 0.04,
            top: mediaQuery.height * 0.30,
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 2, sigmaY: 2, tileMode: TileMode.decal),
              child: Image.asset(
                "assets/images/Union.png",
              ),
            )),
        Positioned(
            left: mediaQuery.width / 5,
            top: mediaQuery.height / 2.5,
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: Image.asset(
                "assets/images/Ellipse 62.png",
              ),
            )),
        Positioned(
          top: -mediaQuery.height * 0.14,
          left: -mediaQuery.width * 0.14,
          child: Image.asset("assets/images/Vector 2011.png"),
        ),
        Positioned(
          top: -mediaQuery.height * 0.15,
          left: -mediaQuery.width * 0.15,
          child: Image.asset("assets/images/Vector 2011.png"),
        ),
        Positioned(
          top: -mediaQuery.height * 0.16,
          left: -mediaQuery.width * 0.16,
          child: Image.asset("assets/images/Vector 2011.png"),
        ),
        Positioned(
          top: -mediaQuery.height * 0.17,
          left: -mediaQuery.width * 0.17,
          child: Image.asset("assets/images/Vector 2011.png"),
        ),
        Positioned(
          top: -mediaQuery.height * 0.18,
          left: -mediaQuery.width * 0.18,
          child: Image.asset("assets/images/Vector 2011.png"),
        ),
        Positioned(
          top: -mediaQuery.height * 0.19,
          left: -mediaQuery.width * 0.19,
          child: Image.asset("assets/images/Vector 2011.png"),
        ),
        Positioned(
          top: mediaQuery.height * 0.05,
          left: mediaQuery.width * 0.2,
          child: Image.asset("assets/images/love_photograph.png"),
        ),
        Positioned(
          top: mediaQuery.height / 5,
          right: mediaQuery.width / 4,
          left: mediaQuery.width / 4,
          child: SizedBox(
            width: mediaQuery.width / 2,
            child: const Text("My Gallery",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 45,
                    fontWeight: FontWeight.bold)),
          ),
        ),
        Positioned(
            top: mediaQuery.height / 2.5,
            left: mediaQuery.width / 11,
            right: mediaQuery.width / 11,
            child: Container(
              //  width: mediaQuery.width - 50,
              height: mediaQuery.height / 2.2,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.4),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "LOG IN",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black54),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  appTextFormField(
                      controller: usernameController,
                      type: TextInputType.emailAddress,
                      validate: () {},
                      label: "User Name"),
                  const SizedBox(
                    height: 20,
                  ),
                  appTextFormField(
                      controller: passwordController,
                      type: TextInputType.visiblePassword,
                      isPassword: true,
                      validate: () {},
                      label: "Password"),
                  const SizedBox(height: 20),
                  MaterialButton(
                      minWidth: double.infinity,
                      height: 40,
                      color: Colors.blueAccent[100],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      onPressed: () {
                        userLogin.login(
                            usernameController.text, passwordController.text);
                      })
                ],
              ),
            ))
      ],
    )));
  }
}
