import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../controllers/MenuAppController.dart';
import '../../../models/MyFiles.dart';
import '../../../responsive.dart';
import 'header.dart';

class FileInfoCard extends StatelessWidget {
  const FileInfoCard({
    Key? key,
    required this.info,
  }) : super(key: key);

  final InfoDosenModel info;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              if (!Responsive.isDesktop(context))
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: context.read<MenuAppController>().controlMenu,
                ),
              if (!Responsive.isMobile(context))
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profil Dosen",
                        style: TextStyle(
                            fontSize: 44,
                            fontWeight: FontWeight.bold,
                            color: Colors.black)),
                    Text(
                      "Profil Dosen Pembimbing Lapangan",
                      style: TextStyle(fontSize: 17, color: Colors.black),
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
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(defaultPadding * 0.50),
                child: Image.asset(
                  'assets/images/profile_dosen.png',
                  height: 76,
                  width: 76,
                ),
              ),
              SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'H Awaludin Jamil',
                      style: TextStyle(
                        fontSize: 37,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Profil Dosen Pembimbing Lapangan',
                      style: TextStyle(fontSize: 17, color: Color(0xff989898)),
                    ),
                    Text(
                      'NIDN',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '201986206017',
                      style: TextStyle(fontSize: 16, color: Color(0xff989898)),
                    ),
                    Text(
                      'Kelompok',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'K2232',
                      style: TextStyle(fontSize: 16, color: Color(0xff989898)),
                    ),
                    Text(
                      'Lokasi KKN',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Pondok Pesantren Putri An Nur 2',
                      style: TextStyle(fontSize: 16, color: Color(0xff989898)),
                    ),
                    Text(
                      'Alamat KKN',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'JL. Bululawang, Demano Jaya',
                      style: TextStyle(fontSize: 16, color: Color(0xff989898)),
                    ),
                    Text(
                      'Bululawang, Kec. Bululawang, Malang',
                      style: TextStyle(fontSize: 16, color: Color(0xff989898)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
