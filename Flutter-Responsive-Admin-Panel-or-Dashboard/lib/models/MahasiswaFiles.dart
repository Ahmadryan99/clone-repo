import 'package:admin/models/MyFiles.dart';
import 'package:admin/screens/logbook.dart';
import 'package:flutter/material.dart';

class MahasiswaTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.black, width: 2), // Set border color and thickness
      ),
      child: Theme(
        data: Theme.of(context).copyWith(
          dividerColor: Colors.black, // Set divider color to black
          // Adjust horizontal spacing between column titles and cells
        ),
        child: DataTable(
          // Set background color of header row
          headingTextStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold), // Set text color of header row
          columns: [
            DataColumn(
              label: Text('ID'),
            ),
            DataColumn(
              label: Text('Nama Mahasiswa'),
            ),
            DataColumn(
              label: Text('NIM'),
            ),
            DataColumn(
              label: Text('Prodi'),
            ),
            DataColumn(
              label: Text('Logbook'),
            ),
            DataColumn(
              label: Text('Nilai'),
            ),
          ],
          rows: [
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
            dataRow(
                context: context,
                id: '1',
                nama: 'Rizky Ramadhan',
                nim: '1986206097',
                prodi: 'Pendidikan Guru Sekolah Dasar',
                nilai: '90'),
          ],
          // rows: [
          //   DataRow(cells: [
          //     DataCell(Text('2', style: TextStyle(color: Colors.black))),
          //     DataCell(Text('Qurotul Badriah',
          //         style: TextStyle(color: Colors.black))),
          //     DataCell(
          //         Text('1986206098', style: TextStyle(color: Colors.black))),
          //     DataCell(Text('Pendidikan Guru Sekolah Dasar',
          //         style: TextStyle(color: Colors.black))),
          //     DataCell(GestureDetector(
          //       onTap: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => LogbookPage(
          //                     info: InfoDosenModel(),
          //                   )),
          //         );
          //       },
          //       child: Image.asset('assets/images/Bookmark.png'),
          //     )),
          //     DataCell(Text('90', style: TextStyle(color: Colors.black))),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text('3', style: TextStyle(color: Colors.black))),
          //     DataCell(Text('Rohmatul Maula',
          //         style: TextStyle(color: Colors.black))),
          //     DataCell(
          //         Text('1986206099', style: TextStyle(color: Colors.black))),
          //     DataCell(Text('Pendidikan Guru Sekolah Dasar',
          //         style: TextStyle(color: Colors.black))),
          //     DataCell(GestureDetector(
          //       onTap: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => LogbookPage(
          //                     info: InfoDosenModel(),
          //                   )),
          //         );
          //       },
          //       child: Image.asset('assets/images/Bookmark.png'),
          //     )),
          //     DataCell(Text('90', style: TextStyle(color: Colors.black))),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text('4', style: TextStyle(color: Colors.black))),
          //     DataCell(
          //         Text('Rista Oktavia', style: TextStyle(color: Colors.black))),
          //     DataCell(
          //         Text('1986206100', style: TextStyle(color: Colors.black))),
          //     DataCell(Text('Pendidikan Guru Sekolah Dasar',
          //         style: TextStyle(color: Colors.black))),
          //     DataCell(GestureDetector(
          //       onTap: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(
          //               builder: (context) => LogbookPage(
          //                     info: InfoDosenModel(),
          //                   )),
          //         );
          //       },
          //       child: Image.asset('assets/images/Bookmark.png'),
          //     )),
          //     DataCell(Text('90', style: TextStyle(color: Colors.black))),
          //   ]),
          //   DataRow(cells: [
          //     DataCell(Text('5', style: TextStyle(color: Colors.black))),
          //     DataCell(Text('Rohmatul Sa Diya',
          //         style: TextStyle(color: Colors.black))),
          //     DataCell(
          //         Text('1986206103', style: TextStyle(color: Colors.black))),
          //     DataCell(Text('Pendidikan Guru Sekolah Dasar',
          //         style: TextStyle(color: Colors.black))),
          //     DataCell(
          //       GestureDetector(
          //         onTap: () {
          //           Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => LogbookPage(
          //                       info: InfoDosenModel(),
          //                     )),
          //           );
          //         },
          //         child: Image.asset('assets/images/Bookmark.png'),
          //       ),
          //     ),
          //     DataCell(Text('90', style: TextStyle(color: Colors.black))),
          //   ]),
          // ],
        ),
      ),
    );
  }

  DataRow dataRow({
    required BuildContext context,
    required String id,
    required String nama,
    required String nim,
    required String prodi,
    required String nilai,
  }) {
    return DataRow(cells: [
      DataCell(Text(id, style: TextStyle(color: Colors.black))),
      DataCell(Text(nama, style: TextStyle(color: Colors.black))),
      DataCell(Text(nim, style: TextStyle(color: Colors.black))),
      DataCell(Text(prodi, style: TextStyle(color: Colors.black))),
      DataCell(GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => LogbookPage(
                      info: InfoDosenModel(),
                    )),
          );
        },
        child: Image.asset('assets/images/Bookmark.png'),
      )),
      DataCell(Text('90', style: TextStyle(color: Colors.black))),
    ]);
  }
}
