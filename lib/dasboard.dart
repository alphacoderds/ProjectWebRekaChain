import 'package:RekaChain/ReportSTTPP.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    Text('Dashboard Page'),
    _buildInputDataPage(),
    CustomPage(),
    Text('Perencanaan Page'),
    Text('Input Kebutuhan Material Page'),
    Text('Input Dokumen Pendukung Page'),
    Text('After Sales Page'),
    Text('Logout'),
  ];

  static Widget _buildInputDataPage() {
    return Column(
      children: [
        Text('Input Data Page'),
        _buildSubMenu(),
      ],
    );
  }

  static Widget _buildSubMenu() {
    return ExpansionTile(
      title: Row(
        children: [
          Icon(Icons.input),
          SizedBox(width: 12), // Add space between icon and text
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
      onTap: () {
        // Handle sub-menu item tap
        // You may want to do something specific for sub-menu items
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1.0,
      ),
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
                SizedBox(height: 35),
                Image.asset(
                  'assets/images/logoreka.png',
                  height: 100,
                  width: 150,
                ),
              ],
            ),
          ),
          _buildListTile('Dashboard', Icons.dashboard, 0),
          _buildSubMenu(),
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
        Navigator.pop(context);
      },
    );
  }
}
