import 'package:flutter/material.dart';
import 'package:shop_app/screens/products/Headphone_screen.dart';
import 'package:shop_app/screens/products/Keyboard_screen.dart';
import 'package:shop_app/screens/products/Mouse_screen.dart';
import 'package:shop_app/screens/products/Smartphone_screen.dart';
import 'package:shop_app/screens/products/display_screen.dart';
import 'package:shop_app/screens/products/products_screen.dart';

import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Special for you",
            press: () {
              Navigator.pushNamed(context, ProductsScreen.routeName);
            },
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/BannerSmartphone.jpg",
                category: "Smartphone",
                numOfBrands: 3,
                press: () {
                  Navigator.pushNamed(context, SmartphoneScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/BannerHeadphone.jpg",
                category: "Headphone",
                numOfBrands: 3,
                press: () {
                  Navigator.pushNamed(context, HeadphoneScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/BannerKeyboard.jpg",
                category: "Keyboard",
                numOfBrands: 3,
                press: () {
                  Navigator.pushNamed(context, KeyboardScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/BannerMouse.jpg",
                category: "Mouse",
                numOfBrands: 3,
                press: () {
                  Navigator.pushNamed(context, MouseScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/BannerTV.jpg",
                category: "TV",
                numOfBrands: 3,
                press: () {
                  Navigator.pushNamed(context, DisplayScreen.routeName);
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category, image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 242,
          height: 100,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.black54,
                        Colors.black38,
                        Colors.black26,
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 15,
                    vertical: 10,
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(text: "$numOfBrands Brands")
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
