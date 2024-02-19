import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const Text('Dashboard Page'),
    _buildInputDataPage(),
    const Text('Report STTPP Page'),
    const Text('Perencanaan Page'),
    const Text('Input Kebutuhan Material Page'),
    const Text('Input Dokumen Pendukung Page'),
    const Text('After Sales Page'),
    const Text('Logout'),
  ];

  static Widget _buildInputDataPage() {
    return Column(
      children: [
        const Text('Dashboard Page'),
        _buildDataRow(1, 'Nama Proyek 1'),
        _buildDataRow(2, 'Nama Proyek 2'),
        _buildDataRow(3, 'Nama Proyek 3'),
        _buildSubMenu(),
      ],
    );
  }

  static Widget _buildDataRow(int number, String projectName) {
    return Row(
      children: [
        Text('No: $number'),
        SizedBox(width: 8),
        Text('Nama Proyek: $projectName'),
      ],
    );
  }

  static Widget _buildSubMenu() {
    return ExpansionTile(
      title: const Row(
        children: [
          Icon(Icons.input),
          SizedBox(width: 12),
          Text('Input Data'),
        ],
      ),
      children: [
        _buildSubListTile('Report STTPP', Icons.receipt, 2),
        _buildSubListTile('Perencanaan', Icons.calendar_today, 3),
        _buildSubListTile('Input Kebutuhan Material', Icons.assignment, 4),
        _buildSubListTile('Input Dokumen Pendukung', Icons.file_present, 5),
      ],
    );
  }

  static ListTile _buildSubListTile(String title, IconData icon, int index) {
    return ListTile(
      title: Text(title),
      leading: Icon(icon),
      onTap: () {},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.5,
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.person_pin_rounded),
            onPressed: () {},
          ),
        ],
      ),
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
          _buildListTile('Dashboard', Icons.dashboard, 0),
          _buildSubMenu(),
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
