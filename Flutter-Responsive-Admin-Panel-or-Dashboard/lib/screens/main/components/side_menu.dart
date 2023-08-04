import 'package:admin/models/MyFiles.dart';
import 'package:admin/screens/Pengaturan_password.dart';
import 'package:admin/screens/Penilaian_Artikel.dart';
import 'package:admin/screens/logbook.dart';
import 'package:admin/screens/main/components/card/Artikel.dart';
import 'package:admin/screens/main/components/card/laporan.dart';
import 'package:admin/screens/penilaian_laporan.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../mahasiswa_page.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          DrawerHeader(
            child: Column(
              children: [
                Image.asset("assets/images/logokkn.png"),
                Image.asset("assets/images/sim.png"),
              ],
            ),
          ),
          DrawerListTile(
            title: "Dosen",
            svgSrc: "assets/icons/menu_dashboard.svg",
            press: () {},
          ),
          DrawerListTile(
            title: "Mahasiswa",
            svgSrc: "assets/icons/menu_tran.svg",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => MahasiswaPage(
                            info: InfoDosenModel(),
                          )));
            },
          ),
          DrawerListTile(
            title: "Pengaturan",
            svgSrc: "assets/icons/menu_setting.svg",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChangePassword(
                            info: InfoDosenModel(),
                          )));
            },
          ),
          // DrawerListTile(
          //   title: "Artikel",
          //   svgSrc: "assets/icons/menu_setting.svg",
          //   press: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => ArtikelKelompokCard()));
          //   },
          // ),
          // DrawerListTile(
          //   title: "Laporan",
          //   svgSrc: "assets/icons/menu_setting.svg",
          //   press: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => LaporanKelompokCard()));
          //   },
          // ),
          // DrawerListTile(
          //   title: "Laporan",
          //   svgSrc: "assets/icons/menu_setting.svg",
          //   press: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => PenilaianArtikel(
          //                   info: InfoDosenModel(),
          //                 )));
          //   },
          // ),
          // DrawerListTile(
          //   title: "Laporan",
          //   svgSrc: "assets/icons/menu_setting.svg",
          //   press: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => PenilaianLaporan(
          //                   info: InfoDosenModel(),
          //                 )));
          //   },
          // ),
          // DrawerListTile(
          //   title: "Laporan",
          //   svgSrc: "assets/icons/menu_setting.svg",
          //   press: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => ChangePassword(
          //                   info: InfoDosenModel(),
          //                 )));
          //   },
          // ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.white54, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
