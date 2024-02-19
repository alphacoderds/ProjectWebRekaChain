import 'package:RekaChain/dasboard.dart';
import 'package:RekaChain/login.dart';
import 'package:flutter/material.dart';

class AfterSales extends StatefulWidget {
  @override
  State<AfterSales> createState() => _AfterSalesState();
}

class _AfterSalesState extends State<AfterSales> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDrawer(),
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
                  columnSpacing: 50,
                  horizontalMargin: 100,
                  columns: [
                    DataColumn(label: Text('No')),
                    DataColumn(
                      label: Row(
                        children: [
                          Text('Nama Project'),
                          Icon(Icons.arrow_drop_down, size: 24),
                        ],
                      ),
                    ),
                    DataColumn(
                      label: Row(
                        children: [
                          Text('Nomor Produk'),
                          Icon(Icons.arrow_drop_down, size: 24),
                        ],
                      ),
                    ),
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
                        onPressed: () {},
                      )),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Text('PT. INKA')),
                      DataCell(Text('AA21 2/24')),
                      DataCell(Text('2024-02-14')),
                      DataCell(IconButton(
                        icon: Icon(Icons.visibility),
                        onPressed: () {},
                      )),
                    ]),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: _buildNotificationAndPersonIcons(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/logoreka.png',
                    height: 130,
                    width: 250,
                  ),
                ),
              ],
            ),
          ),
          _buildListTile('Dashboard', Icons.dashboard, 0, 35),
          _buildSubMenu(),
          _buildListTile('After Sales', Icons.headset_mic, 6, 35),
          _buildListTile('Logout', Icons.logout, 7, 35),
        ],
      ),
    );
  }

  Widget _buildListTile(String title, IconData icon, int index, int size) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        size: size.toDouble(),
      ),
      onTap: () {
        if (index == 7) {
          _showLogoutDialog();
        } else {
          setState(() {
            _selectedIndex = index;
          });
          if (index == 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Dashboard(),
              ),
            );
          } else if (index == 6) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AfterSales(),
              ),
            );
          } else {
            Navigator.pop(context);
          }
        }
      },
    );
  }

  static Widget _buildSubMenu({IconData? icon}) {
    return ExpansionTile(
      title: Row(
        children: [
          Icon(
            icon ?? Icons.input,
            size: 35,
          ),
          SizedBox(width: 12),
          Text('Input Data'),
        ],
      ),
      children: [
        _buildSubListTile('Report STTPP', Icons.receipt, 2, 35),
        _buildSubListTile('Perencanaan', Icons.calendar_today, 3, 35),
        _buildSubListTile('Input Kebutuhan Material', Icons.assignment, 4, 35),
        _buildSubListTile('Input Dokumen Pendukung', Icons.file_present, 5, 35),
      ],
    );
  }

  static ListTile _buildSubListTile(
    String title,
    IconData icon,
    int index,
    int size,
  ) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        size: size.toDouble(),
      ),
      onTap: () {},
    );
  }

  Widget _buildNotificationAndPersonIcons() {
    return Padding(
      padding: const EdgeInsets.only(top: 90, right: 90),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            icon: Icon(
              Icons.notifications_active,
              size: 35,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.account_circle_rounded,
              size: 38,
            ),
            onPressed: () {},
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Logout", style: TextStyle(color: Colors.white)),
          content: Text("Apakah Anda yakin ingin logout?",
              style: TextStyle(color: Colors.white)),
          backgroundColor: const Color.fromRGBO(43, 56, 86, 1),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Batal", style: TextStyle(color: Colors.white)),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: Text("Logout", style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
    );
  }
}
