import 'package:RekaChain/logout.dart';
import 'package:flutter/material.dart';

class dasboard extends StatefulWidget {
  const dasboard({Key? key}) : super(key: key);

  @override
  State<dasboard> createState() => _dasboardState();
}

class _dasboardState extends State<dasboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Text('Dashboard Page'),
    Text('Input Data Page'),
    Text('Report STTPP Page'),
    Text('Perencanaan Page'),
    Text('Input Kebutuhan Material Page'),
    Text('Input Dokumen Pendukung Page'),
    Text('After Sales Page'),
    logoutPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
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
                  height: 100,
                  width: 150,
                ),
              ],
            ),
          ),
          _buildListTile('Dashboard', Icons.dashboard, 0),
          _buildListTile('Input Data', Icons.input, 1),
          _buildListTile('Report STTPP', Icons.receipt, 2),
          _buildListTile('Perencanaan', Icons.calendar_today, 3),
          _buildListTile('Input Kebutuhan Material', Icons.assignment, 4),
          _buildListTile('Input Dokumen Pendukung', Icons.file_present, 5),
          _buildListTile('After Sales', Icons.headset_mic, 6),
          _buildListTile('Logout', Icons.logout, 7),
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
      },
    );
  }
}
