import 'package:RekaChain/dasboard.dart';
import 'package:RekaChain/login.dart';
import 'package:RekaChain/profile.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Sidebar',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AfterSales(),
    );
  }
}

class AfterSales extends StatefulWidget {
  @override
  State<AfterSales> createState() => _AfterSalesState();
}

class _AfterSalesState extends State<AfterSales> {
  int _selectedIndex = 0;
  bool isViewVisible = false;
  late double screenWidth = MediaQuery.of(context).size.width;
  late double screenHeight = MediaQuery.of(context).size.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDrawer(),
          Expanded(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: const Color.fromRGBO(43, 56, 86, 1),
                toolbarHeight: 80,
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: screenHeight * 0.13),
                    child: Row(
                      children: [
                        SizedBox(
                          width: screenWidth * 0.005,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications_active,
                            size: 35,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.account_circle_rounded,
                            size: 38,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),
              body: Center(
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                  margin: EdgeInsets.all(50.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: isViewVisible ? _buildViewTable() : _buildMainTable(),
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
    );
  }

  Widget _buildMainTable() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height - 200,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columnSpacing: 100.0,
            horizontalMargin: 70.0,
            columns: [
              DataColumn(
                label: Container(
                  padding: EdgeInsets.symmetric(horizontal: 1.0),
                  child: Text(
                    'No',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: Row(
                    children: [
                      Text(
                        'Nama Project',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        size: 24,
                      ),
                    ],
                  ),
                ),
              ),
              DataColumn(
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'Nomor Produk',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Icon(Icons.arrow_drop_down, size: 25),
                    ],
                  ),
                ),
              ),
              DataColumn(
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    'Tanggal Report',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              DataColumn(
                label: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    children: [
                      Text(
                        'View',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('1')),
                DataCell(Text('PT. Nugraha Jasa')),
                DataCell(Text('AA21 1/24')),
                DataCell(Text('13-02-2024')),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isViewVisible = !isViewVisible;
                      });
                    },
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('PT. INKA')),
                DataCell(Text('AA21 2/24')),
                DataCell(Text('13-02-2024')),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isViewVisible = !isViewVisible;
                      });
                    },
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('PT. INKA')),
                DataCell(Text('AA21 2/24')),
                DataCell(Text('13-02-2024')),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isViewVisible = !isViewVisible;
                      });
                    },
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('PT. INKA')),
                DataCell(Text('AA21 2/24')),
                DataCell(Text('13-02-2024')),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isViewVisible = !isViewVisible;
                      });
                    },
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('PT. INKA')),
                DataCell(Text('AA21 2/24')),
                DataCell(Text('13-02-2024')),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isViewVisible = !isViewVisible;
                      });
                    },
                  ),
                ),
              ]),
              DataRow(cells: [
                DataCell(Text('2')),
                DataCell(Text('PT. INKA')),
                DataCell(Text('AA21 2/24')),
                DataCell(Text('13-02-2024')),
                DataCell(
                  IconButton(
                    icon: Icon(Icons.visibility),
                    onPressed: () {
                      setState(() {
                        isViewVisible = !isViewVisible;
                      });
                    },
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildViewTable() {
    return DataTable(
      columnSpacing: 0,
      horizontalMargin: 100,
      columns: [
        DataColumn(label: Text('No')),
        DataColumn(label: Text('Detail Kerusakan')),
        DataColumn(label: Text('Item')),
        DataColumn(label: Text('Keterangan')),
        DataColumn(label: Text('Saran')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('1')),
          DataCell(Text('')),
          DataCell(Text('')),
          DataCell(Text('')),
          DataCell(Text('')),
        ]),
        DataRow(cells: [
          DataCell(Text('2')),
          DataCell(Text('')),
          DataCell(Text('')),
          DataCell(Text('')),
          DataCell(Text('')),
        ]),
      ],
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
        color: Color.fromARGB(255, 6, 37, 55),
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

  Widget _buildSubMenu({IconData? icon}) {
    return ExpansionTile(
      title: Row(
        children: [
          Icon(
            icon ?? Icons.input,
            size: 35,
            color: Color.fromARGB(255, 6, 37, 55),
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

  Widget _buildSubListTile(
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
        color: Color.fromARGB(255, 6, 37, 55),
      ),
      onTap: () {},
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