import 'package:admin/constants.dart';
import 'package:flutter/material.dart';

class InfoDosenModel {
  final String? svgSrc, title, totalStorage;

  final Color? color;

  InfoDosenModel({
    this.svgSrc,
    this.title,
    this.totalStorage,
    this.color,
  });
}

List demoMyFiles = [
  InfoDosenModel(
    title: "Documents",
    svgSrc: "assets/images/profile_dosen.png",
    totalStorage: "1.9GB",
    color: primaryColor,
  ),
  // InfoDosenModel(
  //   title: "Google Drive",
  //   numOfFiles: 1328,
  //   svgSrc: "assets/icons/google_drive.svg",
  //   totalStorage: "2.9GB",
  //   color: Color(0xFFFFA113),
  //   percentage: 35,
  // ),
  // InfoDosenModel(
  //   title: "One Drive",
  //   numOfFiles: 1328,
  //   svgSrc: "assets/icons/one_drive.svg",
  //   totalStorage: "1GB",
  //   color: Color(0xFFA4CDFF),
  //   percentage: 10,
  // ),
  // InfoDosenModel(
  //   title: "Documents",
  //   numOfFiles: 5328,
  //   svgSrc: "assets/icons/drop_box.svg",
  //   totalStorage: "7.3GB",
  //   color: Color(0xFF007EE5),
  //   percentage: 78,
  // ),
];
