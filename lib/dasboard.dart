import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        toolbarHeight: 100.0,
      ),
      drawer: _buildDrawer(),
      body: _buildMainContent(),
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
              children: [
                Expanded(
                  child: Image.asset(
                    'assets/images/Logo-REKA.png',
                    height: 100,
                    width: 150,
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Dashboard'),
            leading: Icon(Icons.dashboard),
            onTap: () {
              Navigator.pop(context);
              // Navigasi ke halaman Dashboard jika diperlukan
            },
          ),
          ListTile(
            title: Text('Input Data'),
            leading: Icon(Icons.input),
            onTap: () {
              Navigator.pop(context);
              // Navigasi ke halaman Input Data jika diperlukan
            },
          ),
          ListTile(
            title: Text('Report STTPP'),
            leading: Icon(Icons.receipt),
            onTap: () {
              Navigator.pop(context);
              // Navigasi ke halaman Report STTPP jika diperlukan
            },
          ),
          ListTile(
            title: Text('Perencanaan'),
            leading: Icon(Icons.calendar_today),
            onTap: () {
              Navigator.pop(context);
              // Navigasi ke halaman Perencanaan jika diperlukan
            },
          ),
          ListTile(
            title: Text('Input Kebutuhan Material'),
            leading: Icon(Icons.assignment),
            onTap: () {
              Navigator.pop(context);
              // Navigasi ke halaman Input Kebutuhan Material jika diperlukan
            },
          ),
          ListTile(
            title: Text('Input Dokumen Pendukung'),
            leading: Icon(Icons.file_present),
            onTap: () {
              Navigator.pop(context);
              // Navigasi ke halaman Input Dokumen Pendukung jika diperlukan
            },
          ),
          ListTile(
            title: Text('After Sales'),
            leading: Icon(Icons.headset_mic),
            onTap: () {
              Navigator.pop(context);
              // Navigasi ke halaman After Sales jika diperlukan
            },
          ),
          ListTile(
            title: Text('Logout'),
            leading: Icon(Icons.logout),
            onTap: () {
              Navigator.pop(context);
              // Lakukan logout jika diperlukan
            },
          ),
        ],
      ),
    );
  }

  Widget _buildMainContent() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Widget main content dihapus
          ],
        ),
      ),
    );
  }
}
