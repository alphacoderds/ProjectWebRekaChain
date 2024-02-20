import 'package:flutter/material.dart';

class ReportSTTP extends StatefulWidget {
  const ReportSTTP({Key? key}) : super(key: key);

  @override
  State<ReportSTTP> createState() => _ReportSTTPState();
}

class _ReportSTTPState extends State<ReportSTTP> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.5,
      ),
      body: Stack(
        children: [
          _pages[_selectedIndex],
          if (_selectedIndex == 0) _buildDrawer(),
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
          _buildListTile('Keluar', Icons.logout, 7, 35),
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
        setState(() {
          _selectedIndex = index;
        });
        Navigator.pop(context);
      },
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

  Widget _buildSubmenu(String title, IconData icon, int index) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        size: 35,
      ),
      onTap: () {
        print('Submenu $title ditekan');
        setState(() {
          _selectedIndex = index;
        });
        Navigator.pop(context);
      },
    );
  }
}
