import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:my_gallery_app/module/log_in_screen.dart';
import 'package:my_gallery_app/shared/provider/gallery_provider.dart';
import 'package:my_gallery_app/shared/provider/login_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var gallery = Provider.of<GalleryProvider>(context);
    var userToken = Provider.of<LoginProvider>(context).userToken;


    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: -mediaQuery.height * 0.05,
                left: -mediaQuery.width / 3,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Image.asset("assets/images/gallery/Group 11.png",
                      color: const Color.fromRGBO(255, 255, 255, 0.3),
                      colorBlendMode: BlendMode.modulate),
                )),
            Positioned(
                top: mediaQuery.height * 0.2,
                left: -mediaQuery.width / 3,
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                  child: Image.asset("assets/images/gallery/Group 9.png",
                      color: const Color.fromRGBO(255, 255, 255, 0.9),
                      colorBlendMode: BlendMode.modulate),
                )),
            Positioned(
                top: mediaQuery.height * 0.03,
                left: mediaQuery.width * 0.1,
                child: SizedBox(
                  width: mediaQuery.width * 0.40,
                  child: const Text(
                    "Welcome Mina",
                    style: TextStyle(fontSize: 28, color: Colors.black87),
                  ),
                )),
            Positioned(
                top: mediaQuery.height * 0.03,
                right: mediaQuery.width * 0.1,
                child: SizedBox(
                  width: mediaQuery.width * 0.10,
                  child: const ClipOval(
                    child: Image(
                      image: AssetImage("assets/images/gallery/image.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                )),
            Positioned(
                top: mediaQuery.height * 0.15,
                left: 10,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: mediaQuery.width * 0.35,
                      height: 40,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/gallery/Ellipse 33.png"),
                              fit: BoxFit.fill)),
                      child: MaterialButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => LogInScreen()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/gallery/Vector.png"),
                                        fit: BoxFit.cover)),
                                child: const Image(
                                    image: AssetImage(
                                        "assets/images/gallery/Vector (1).png")),
                              ),
                              const Text("log out")
                            ],
                          )),
                    ),
                    Container(
                      width: mediaQuery.width * 0.35,
                      height: 40,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/gallery/Ellipse 33.png"),
                              fit: BoxFit.fill)),
                      child: MaterialButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    backgroundColor:
                                        Colors.grey.shade200.withOpacity(0.7),
                                    shape: const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(32.0))),
                                    content: SizedBox(
                                      height: 200,
                                      width: double.infinity,
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/gallery/Ellipse 33.png"),
                                                  fit: BoxFit.fill),
                                              color: HexColor("#EFD8F9"),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            padding: const EdgeInsets.all(15),
                                            height: 60,
                                            width: 190,
                                            child: GestureDetector(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  const Image(
                                                      image: AssetImage(
                                                          "assets/images/gallery/gallery.png")),
                                                  Text(
                                                    "Gallery",
                                                    style: TextStyle(
                                                        fontSize: 25,
                                                        color:
                                                            HexColor("#565456"),
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  )
                                                ],
                                              ),
                                              onTap: () {
                                                gallery.getImageFromGallery(userToken!);
                                                Navigator.pop(context);

                                              },
                                            ),
                                          ),
                                          Container(
                                            decoration: BoxDecoration(
                                              image: const DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/gallery/Ellipse 33.png"),
                                                  fit: BoxFit.fill),
                                              color: HexColor("#EBF6FF"),
                                              borderRadius:
                                                  BorderRadius.circular(30),
                                            ),
                                            padding: const EdgeInsets.all(15),
                                            height: 60,
                                            width: 190,
                                            child: GestureDetector(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  const Image(
                                                      image: AssetImage(
                                                          "assets/images/gallery/3.png")),
                                                  Text("Camera",
                                                      style: TextStyle(
                                                          fontSize: 25,
                                                          color: HexColor(
                                                              "#565456"),
                                                          fontWeight:
                                                              FontWeight.bold))
                                                ],
                                              ),
                                              onTap: () {
                                                gallery.getImageFromCamera(userToken!);
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ));
                              },
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/gallery/Vector (2).png"),
                                        fit: BoxFit.cover)),
                                child: const Image(
                                    image: AssetImage(
                                        "assets/images/gallery/Vector (3).png")),
                              ),
                              const Text("upload")
                            ],
                          )),
                    )
                  ],
                )),
            Positioned(
                top: mediaQuery.height * 0.23,
                left: 5,
                right: 5,
                bottom: 10,
                child: (gallery.galleryData.isNotEmpty)
                    ? GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisSpacing: 1,
                          mainAxisSpacing: 1,
                          crossAxisCount: 3,
                        ),
                        //itemCount: 1,
                        itemCount: gallery.galleryData.length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.all(12),
                            child: (gallery.galleryData[index] != null)
                                ? Image(
                                    image: NetworkImage(gallery.galleryData[index]),
                                    fit: BoxFit.cover,
                                  )
                                : const Center(
                                    child: CircularProgressIndicator(),
                                  ),
                          );
                        },
                      )
                    : const Center(child: CircularProgressIndicator()))
          ],
        ),
      ),
    );
  }
}
