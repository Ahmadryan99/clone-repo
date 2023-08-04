import 'package:admin/screens/penilaian_laporan.dart';
import 'package:flutter/material.dart';

import '../../../../models/MyFiles.dart';

class LaporanKelompokCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xff10AEE0),
      ),
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Laporan Kelompok',
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    '-',
                    style: TextStyle(fontSize: 50, color: Colors.white),
                  ),
                  Text(
                    'Belum di Nilai',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  )
                ],
              ),
              Text(
                'LAPORAN KKN AN NUR 2 PUTRI',
                style: TextStyle(fontSize: 12, color: Colors.white),
              ),
            ],
          ),
          SizedBox(height: 15),
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
                      builder: (context) => PenilaianLaporan(
                        info: InfoDosenModel(),
                      ), // Ganti dengan halaman penilaian artikel
                    ),
                  );
                },
                child: Center(
                  child: Text(
                    'Beri Nilai Laporan',
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff10AEE0)),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
