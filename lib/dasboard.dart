import 'package:flutter/material.dart';

class Dasboard extends StatefulWidget {
  const Dasboard({Key? key}) : super(key: key);

  @override
  State<Dasboard> createState() => _DasboardState();
}

class _DasboardState extends State<Dasboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Text('Halaman Dasbor'),
    Text('Halaman Input Data'),
    Text('Halaman Laporan STTPP'),
    Text('Halaman Perencanaan'),
    Text('Halaman Input Kebutuhan Material'),
    Text('Halaman Input Dokumen Pendukung'),
    Text('Halaman After Sales'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pages[_selectedIndex],
          if (_selectedIndex == 0) _buildDrawer(),
        ],
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/Logo-REKA--300x104 1.png',
                  height: 130,
                  width: 250,
                ),
              ],
            ),
          ),
          _buildListTile('Dasbor', Icons.dashboard, 0),
          _buildListTile('Input Data', Icons.input, 1),
          _buildSubmenu('Submenu 1', Icons.arrow_forward, 8),
          _buildSubmenu('Submenu 2', Icons.arrow_forward, 9),
          _buildListTile('Perencanaan', Icons.calendar_today, 3),
          _buildListTile('Input Kebutuhan Material', Icons.assignment, 4),
          _buildListTile('Input Dokumen Pendukung', Icons.file_present, 5),
          _buildListTile('Laporan STTPP', Icons.receipt, 2),
          _buildListTile('After Sales', Icons.headset_mic, 6),
          _buildListTile('Keluar', Icons.logout, 7),
        ],
      ),
    );
  }

  ListTile _buildListTile(String title, IconData icon, int index) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        Navigator.pop(context);
      },
    );
  }

  Widget _buildSubmenu(String title, IconData icon, int index) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: () {
        // Tambahkan logika atau perpindahan halaman untuk submenu di sini
        print('Submenu $title ditekan');
        setState(() {
          _selectedIndex = index;
        });
        Navigator.pop(context);
      },
    );
  }
}
