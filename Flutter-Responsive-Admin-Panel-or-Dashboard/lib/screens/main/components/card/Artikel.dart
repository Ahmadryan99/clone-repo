import 'package:admin/models/MyFiles.dart';
import 'package:admin/screens/Penilaian_Artikel.dart';
import 'package:flutter/material.dart';

class ArtikelKelompokCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff269A51),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Artikel Kelompok',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          Row(
            children: [
              Text(
                '95',
                style: TextStyle(fontSize: 72, color: Colors.white),
              ),
              SizedBox(width: 10),
              Flexible(
                child: Text(
                  'PEMBELAJARAN METODE SOROGAN UNTUK MENINGKATKAN HASIL BELAJAR SANTRI PONDOK PESANTREN PUTRI ANNUR 2',
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: 40,
              width: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white,
              ),
              child: TextButton(
                onPressed: () {
                  // Navigasi ke halaman penilaian artikel ketika tombol diklik
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PenilaianArtikel(
                        info: InfoDosenModel(),
                      ), // Ganti dengan halaman penilaian artikel
                    ),
                  );
                },
                child: Text(
                  'Beri Nilai Artikel',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff269A51)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
