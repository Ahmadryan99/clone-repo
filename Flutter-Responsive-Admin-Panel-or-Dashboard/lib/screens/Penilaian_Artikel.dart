import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../constants.dart';
import '../../../../controllers/MenuAppController.dart';
import '../../../../models/MyFiles.dart';
import '../../../../responsive.dart';
import 'dashboard/components/header.dart';
import 'main/components/side_menu.dart';

class PenilaianArtikel extends StatelessWidget {
  const PenilaianArtikel({
    Key? key,
    required this.info,
  }) : super(key: key);

  final InfoDosenModel info;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // SideMenu will be displayed here
          SideMenu(),
          Expanded(
            // PenilaianArtikel will be displayed here
            child: Container(
              padding: EdgeInsets.all(defaultPadding),
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
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
                              "Penilaian Artikel",
                              style: TextStyle(
                                fontSize: 44,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            Text(
                              "Penilaian Artikel Mahasiswa",
                              style: TextStyle(
                                fontSize: 17,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      if (!Responsive.isMobile(context))
                        Spacer(flex: Responsive.isDesktop(context) ? 2 : 1),
                      // Expanded(child: SearchField()),
                      ProfileCard(),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .pop(); // Kembali ke halaman sebelumnya (MahasiswaPage)
                    },
                    child: Container(
                      height: 35,
                      width: 126,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Color(0xff3772FF),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: SizedBox(
                      height: 382,
                      width: 527,
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          border: Border.all(
                              color: Colors.black,
                              width: 1), // Menambahkan outline hitam
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 20,
                                ), // Tambahkan padding ke kanan di sini
                                child: Text(
                                  'Form Penilaian Artikel',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              Text(
                                'Judul',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff3772FF),
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Expanded(
                                child: Text(
                                  'Pembelajaran metode sorogan untuk meningkatkan hasil belajar Santri pondok pesantren Putri Annur 2',
                                  maxLines: 2, // Mengatur teks menjadi 3 baris
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.black),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/images/document.png'),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    'Unduh Dokumen',
                                    style: TextStyle(
                                      fontStyle: FontStyle.italic,
                                      fontSize: 14,
                                      color: Color(0xff3772FF),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Text(
                                'Nilai',
                                style: TextStyle(
                                    decoration: TextDecoration.underline,
                                    decorationColor: Color(0xff3772FF),
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: 20),
                              Container(
                                height: 35,
                                width: 213,
                                child: DecoratedBox(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                    color: Colors.grey[200],
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(8),
                                        child: Text(
                                          '95',
                                          style: TextStyle(
                                            fontSize: 16,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      Spacer(), // Membuat ruang kosong di antara teks dan IconButton
                                      // Column(
                                      //   crossAxisAlignment:
                                      //       CrossAxisAlignment.end,
                                      //   children: [
                                      //     SizedBox(
                                      //       width:
                                      //           24, // Mengatur lebar IconButton
                                      //       height:
                                      //           24, // Mengatur tinggi IconButton
                                      //       child: IconButton(
                                      //         icon: Icon(Icons.arrow_drop_up),
                                      //         color: Colors.black,
                                      //         onPressed: () {
                                      //           // Kode untuk menangani aksi saat tombol atas di klik
                                      //         },
                                      //       ),
                                      //     ),
                                      //     // Membuat jarak vertikal antara dua IconButton
                                      //     SizedBox(
                                      //       width:
                                      //           24, // Mengatur lebar IconButton
                                      //       height:
                                      //           24, // Mengatur tinggi IconButton
                                      //       child: IconButton(
                                      //         icon: Icon(Icons.arrow_drop_down),
                                      //         color: Colors.black,
                                      //         onPressed: () {
                                      //           // Kode untuk menangani aksi saat tombol bawah di klik
                                      //         },
                                      //       ),
                                      //     ),
                                      //   ],
                                      // ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: [
                                  Container(
                                    height: 27,
                                    width: 102,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xff269A51),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Beri Nilai',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    height: 27,
                                    width: 102,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Color(0xffDC5125),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Hapus Nilai',
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
