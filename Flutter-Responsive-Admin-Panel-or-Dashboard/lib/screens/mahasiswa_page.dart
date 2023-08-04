import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../constants.dart';
import '../../../controllers/MenuAppController.dart';
import '../../../responsive.dart';
import '../models/MahasiswaFiles.dart';
import '../models/MyFiles.dart';
import 'dashboard/components/header.dart';
import 'main/components/card/Artikel.dart';
import 'main/components/card/laporan.dart';
import 'main/components/side_menu.dart';

class MahasiswaPage extends StatelessWidget {
  const MahasiswaPage({
    Key? key,
    required this.info,
  }) : super(key: key);

  final InfoDosenModel info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SideMenu(),
          SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 1.5,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Container(
                padding: EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header row
                    Row(
                      children: [
                        if (!Responsive.isDesktop(context))
                          IconButton(
                            icon: Icon(Icons.menu),
                            onPressed:
                                context.read<MenuAppController>().controlMenu,
                          ),
                        if (!Responsive.isMobile(context))
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mahasiswa",
                                style: TextStyle(
                                  fontSize: 44,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                "Data Mahasiswa",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        if (!Responsive.isMobile(context))
                          Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
                        ProfileCard(),
                      ],
                    ),
                    SizedBox(height: 20),

                    // Lokasi dan Alamat KKN row
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Your content here
                      ],
                    ),

                    // Artikel dan Laporan Kelompok row
                    Row(
                      children: [
                        ArtikelKelompokCard(),
                        SizedBox(width: 40),
                        LaporanKelompokCard(),
                      ],
                    ),
                    SizedBox(height: 10),

                    // Data Mahasiswa heading
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Data Mahasiswa',
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: secondaryColor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10),

                    // Mahasiswa table
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.5,
                      child: SingleChildScrollView(
                        child: MahasiswaTable(),
                      ),
                    ),
                    TextButton(
                        onPressed: () {}, child: Text('Tambah Mahasiswa')),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
