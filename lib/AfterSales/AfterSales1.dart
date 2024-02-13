import 'package:flutter/material.dart';

class AfterSales extends StatefulWidget {
  @override
  State<AfterSales> createState() => _AfterSalesState();
}

class _AfterSalesState extends State<AfterSales> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logoREKA.png',
              width: 250,
              height: 250,
            ),
            SizedBox(width: 10),
          ],
        ),
        toolbarHeight: 100.0,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 270,
            color: Colors.grey[200],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  leading: Icon(Icons.home, size: 45),
                  title: Text('Dashboard', style: TextStyle(fontSize: 20)),
                  onTap: () {
                    // TODO: Implement logic for Dashboard page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.bar_chart, size: 45),
                  title: Text('Input Data', style: TextStyle(fontSize: 20)),
                  onTap: () {
                    // TODO: Implement logic for Input Data page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.headset_mic, size: 45),
                  title: Text('After Sales',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  onTap: () {
                    // TODO: Implement logic for After Sales page
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout_rounded, size: 45),
                  title: Text('Logout', style: TextStyle(fontSize: 20)),
                  onTap: () {
                    // TODO: Implement logic for Logout
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: Center(
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 20.0),
                margin: EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: DataTable(
                  columnSpacing: 50, // Jarak antar kolom
                  horizontalMargin: 100,
                  // Margin horizontal pada seluruh kolom
                  columns: [
                    DataColumn(label: Text('No')),
                    DataColumn(
                        label: Row(
                      // Menggunakan Row untuk menambahkan ikon collapse arrow
                      children: [
                        Text('Nama Project'),
                        Icon(Icons.arrow_drop_down,
                            size: 24), // Ikon collapse arrow
                      ],
                    )),
                    DataColumn(
                        label: Row(
                      // Menggunakan Row untuk menambahkan ikon collapse arrow
                      children: [
                        Text('Nomor Produk'),
                        Icon(Icons.arrow_drop_down,
                            size: 24), // Ikon collapse arrow
                      ],
                    )),
                    DataColumn(label: Text('Tanggal Report')),
                    DataColumn(label: Text('View')),
                  ],

                  rows: [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Text('PT. Nugraha Jasa')),
                      DataCell(Text('AA21 1/24')),
                      DataCell(Text('2024-02-13')),
                      DataCell(IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          // Implement view logic
                        },
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Text('PT. INKA')),
                      DataCell(Text('AA21 2/24')),
                      DataCell(Text('2024-02-14')),
                      DataCell(IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {
                          // Implement view logic
                        },
                      )),
                    ]),
                    // Add more rows as needed
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
