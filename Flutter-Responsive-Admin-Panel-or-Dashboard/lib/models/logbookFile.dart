import 'package:flutter/material.dart';

class LogbookTable extends StatelessWidget {
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
              label: Text('Tanggal'),
            ),
            DataColumn(
              label: Text('Kegiatan'),
            ),
            DataColumn(
              label: Text('Descripsi'),
            ),
          ],
          rows: [
            DataRow(cells: [
              DataCell(Text('08:00 | Monday, 14/11/2022',
                  style: TextStyle(color: Colors.black))),
              DataCell(
                  Text('Pembukaan kkn', style: TextStyle(color: Colors.black))),
              DataCell(Text(
                  'Adapun kegiatan hari ini adalah pembukaan KKN bersama....',
                  style: TextStyle(color: Colors.black))),
            ]),
            DataRow(cells: [
              DataCell(Text('07:30 | Monday, 14/11/2022',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text(
                  'Membantu KBM madrasah Diniyah pondok pesantren putri Annur 2',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text('✅ Membantu KBM Madrasah Diniyah Lembaga Pondok...',
                  style: TextStyle(color: Colors.black))),
            ]),
            DataRow(cells: [
              DataCell(Text('06:15 | Monday, 14/11/2022',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text('Membantu menjaga koprasi pondok pesantren',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text('✅ Kegiatan Menjaga Koperasi Pondok Dalam...',
                  style: TextStyle(color: Colors.black))),
            ]),
            DataRow(cells: [
              DataCell(Text('09:30 | Monday, 14/11/2022',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text('Melaksanakan sorogan bersama santri al badr',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text('✅ Sorogan Santri Al badar Santri Al badar...',
                  style: TextStyle(color: Colors.black))),
            ]),
            DataRow(cells: [
              DataCell(Text('14:00 | Sunday, 20/11/2022',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text(
                  'Melaksanakan kebersihan setelah adanya bazar ahad legi',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text('Adapun kegiatan hari ini adalah membantu mem...',
                  style: TextStyle(color: Colors.black))),
            ]),
            DataRow(cells: [
              DataCell(Text('06:00 | Thursday, 24/11/2022',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text('Senam bersama pengurus di aula yaqowi',
                  style: TextStyle(color: Colors.black))),
              DataCell(Text('Adapun kegiatan hari ini adalah senam ber...',
                  style: TextStyle(color: Colors.black))),
            ]),
          ],
        ),
      ),
    );
  }
}
