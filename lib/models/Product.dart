import 'package:flutter/material.dart';

class Product {
  final int id;
  final String title, description, price;
  final List<String> images;
  final List<Color> colors;
  final double rating;
  final String kategori;
  final bool isPopular, isSelected;
  bool isFavourite;

  Product(
      {required this.id,
      required this.images,
      required this.colors,
      this.rating = 0.0,
      required this.isFavourite,
      this.isPopular = false,
      required this.isSelected,
      required this.title,
      required this.price,
      required this.description,
      required this.kategori});

  void toggleFavourite() {
    isFavourite = !isFavourite;
  }
}

List<Product> demoProducts = [
  Product(
      id: 1,
      images: ["assets/images/hp iphone.jpg"],
      colors: [
        Colors.black,
      ],
      title: "iPhone 11",
      price: "5.919.000",
      description:
          "iPhone 11 adalah ponsel pintar terbaru dari Apple dengan layar 6.1 inci, prosesor A13 Bionic, kamera ganda 12MP, dan fitur keamanan Face ID.",
      rating: 4.8,
      kategori: "Smartphone",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 2,
      images: ["assets/images/hp samsung.jpg"],
      colors: [
        Colors.black,
      ],
      title: "Samsung Galaxy A35 5G",
      price: "5.499.000",
      description:
          "Samsung Galaxy A35 5G: Ponsel Samsung dengan teknologi 5G untuk koneksi internet super cepat.",
      rating: 4.7,
      kategori: "Smartphone",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 3,
      images: [
        "assets/images/hp redmi.jpg",
      ],
      colors: [Colors.black],
      title: "Xiaomi Poco M6 Pro",
      price: "2.760.000",
      description:
          "Xiaomi Poco M6 Pro Ponsel pintar kelas menengah yang powerful dengan layar besar, prosesor kuat, kemampuan kamera yang mengesankan, dan konektivitas 5G terbaru, semua dengan harga yang kompetitif.",
      rating: 4.6,
      isPopular: true,
      kategori: "Smartphone",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 4,
      images: ["assets/images/headphone Logitech.png"],
      colors: [
        Colors.black,
      ],
      title: "Logitech G733",
      price: "1.569.000",
      description:
          "Logitech G733 LIGHTSPEED adalah headset gaming nirkabel yang dilengkapi dengan teknologi suara surround 7.1 untuk pengalaman gaming yang immersif dan audio yang detail.",
      rating: 4.8,
      kategori: "Headphone",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 5,
      images: ["assets/images/headphone Fantech.png"],
      colors: [
        Colors.black,
      ],
      title: "Fantech CHIEF II HG20 RGB",
      price: "130.000",
      description:
          "Fantech CHIEF II HG20: Headset gaming dengan pencahayaan RGB yang menarik, dirancang untuk meningkatkan pengalaman gaming dengan gaya hitam yang elegan.",
      rating: 4.4,
      kategori: "Headphone",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 6,
      images: ["assets/images/headphone rexus.png"],
      colors: [
        Colors.black,
      ],
      title: "Rexus Thundervox Stream HX20",
      price: "419.000",
      description:
          "Rexus Headset Gaming Thundervox Stream HX20: Headset gaming dengan desain hitam yang dilengkapi dengan fitur-fitur untuk pengalaman suara yang lebih baik dalam bermain game.",
      rating: 4.9,
      kategori: "Headphone",
      isPopular: true,
      isFavourite: false,
      isSelected: false),
  Product(
      id: 7,
      images: ["assets/images/keyboard Logitech.png"],
      colors: [
        Colors.redAccent,
      ],
      title: "Logitech Pebble Keys2 K380s",
      price: "498.000",
      description:
          "Logitech Pebble Keys2 K380s: Keyboard Bluetooth nirkabel multi-perangkat dengan desain Tonal Rose.",
      rating: 4.5,
      kategori: "Keyboard",
      isPopular: true,
      isFavourite: false,
      isSelected: false),
  Product(
      id: 8,
      images: ["assets/images/keyboard Rexus.png"],
      colors: [
        Colors.black,
      ],
      title: "Rexus KB02 Mosaic KB-02",
      price: "184.000",
      description:
          "Rexus KB02 Wireless Keyboard: Keyboard nirkabel dengan dual koneksi, model Mosaic KB-02 dalam warna hitam.",
      rating: 4.8,
      kategori: "Keyboard",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 9,
      images: ["assets/images/keyboard fantect.png"],
      colors: [
        Colors.red,
      ],
      title: "Fantech ATOM PRO SERIES",
      price: "549.000",
      description:
          "Fantech ATOM PRO SERIES Wireless Mechanical Gaming Keyboard - PRO63 MERCURY, Red switch: Keyboard gaming mekanikal nirkabel dengan switch Red, dirancang untuk penggantian panas (hotswap).",
      rating: 4.6,
      kategori: "Keyboard",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 10,
      images: ["assets/images/tv Lg.png"],
      colors: [
        Colors.black,
      ],
      title: "LG Smart LED TV",
      price: "3.899.000",
      description:
          "LG Smart LED TV 65UR7500: TV 4K UHD dengan AI ThinQ, DVB-T2, dan layar LED cerdas.",
      rating: 4.8,
      kategori: "TV",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 11,
      images: ["assets/images/tv Panassonic.png"],
      colors: [
        Colors.black,
      ],
      title: "LED TV Panasonic",
      price: "3.899.000",
      description:
          "Panasonic LED TV 43 Inch DIGITAL TH-43H400G: TV dengan layar LED, mendukung DVB-T2, dan fitur USB untuk memutar film.",
      rating: 4.8,
      kategori: "TV",
      isPopular: true,
      isFavourite: false,
      isSelected: false),
  Product(
      id: 12,
      images: ["assets/images/tv samsung.png"],
      colors: [
        Colors.black,
      ],
      title: "SAMSUNG NEO QLED SMART",
      price: "3.899.000",
      description:
          "Samsung Neo QLED Smart TV 55 inch QA-55QN700BKXXD: TV cerdas Neo QLED 8K dengan layar 55 inci dari Samsung.",
      rating: 4.9,
      kategori: "TV",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 13,
      images: ["assets/images/mouse rexus.png"],
      colors: [
        Colors.black,
      ],
      title: "Rexus Xierra 108",
      price: "174.000",
      description:
          "Rexus Mouse Wireless Gaming Xierra 108: Mouse gaming nirkabel dengan sensor optik presisi tinggi, desain ergonomis untuk kenyamanan maksimal, dan tombol yang dapat diprogram untuk performa gaming yang optimal",
      rating: 4.6,
      kategori: "Mouse",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 14,
      images: ["assets/images/mouse logitech.png"],
      colors: [
        Colors.black,
      ],
      title: "Logitech MX Master 2S",
      price: "797.000",
      description:
          "Logitech MX Master 2S: Mouse nirkabel Bluetooth dengan pengisian ulang, dirancang untuk kenyamanan dan produktivitas tinggi dengan sensor presisi dan tombol-tombol yang dapat disesuaikan",
      rating: 4.9,
      kategori: "Mouse",
      isFavourite: false,
      isSelected: false),
  Product(
      id: 15,
      images: ["assets/images/mouse Fantech.png"],
      colors: [
        Colors.black,
      ],
      title: "FANTECH VENOM II WGC2",
      price: "205.000",
      description:
          "FANTECH Mouse Gaming VENOM II WGC2: Mouse gaming nirkabel PTFE yang dapat diisi ulang, dengan sensor presisi tinggi dan desain ergonomis untuk performa optimal dalam permainan",
      rating: 4.7,
      kategori: "Mouse",
      isPopular: true,
      isFavourite: false,
      isSelected: false),
];
