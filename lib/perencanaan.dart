import 'package:RekaChain/dasboard.dart';
import 'package:RekaChain/login.dart';
import 'package:flutter/material.dart';

class Perencanaan extends StatefulWidget {
  const Perencanaan({super.key});

  @override
  State<Perencanaan> createState() => _PerencanaanState();
}

class _PerencanaanState extends State<Perencanaan> {
  late double screenWidth = MediaQuery.of(context).size.width;
  late double screenHeight = MediaQuery.of(context).size.height;
  bool isViewVisible = false;

  int _selectedIndex = 0;
  List<String> dropdownItems = [
    '--Pilih Nama/Kode Project--',
    'R22-PT. Nugraha Jasa',
    'PT. INDAH JAYA'
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: screenWidth * 0.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDrawer(),
            Expanded(
                child: Scaffold(
//===========================================================Appbar===========================================================//
              appBar: AppBar(
                backgroundColor: const Color.fromRGBO(43, 56, 86, 1),
                toolbarHeight: 65,
                title: Padding(
                  padding: EdgeInsets.only(left: screenHeight * 0.02),
                  child: Text(
                    'Input Dokumen Pendukung',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Donegal One',
                      color: Colors.white,
                    ),
                  ),
                ),
                actions: [
                  Padding(
                    padding: EdgeInsets.only(right: screenHeight * 0.13),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'View',
                          ),
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                const Color.fromRGBO(43, 56, 86, 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 5, vertical: 3),
                          ),
                        ),
                        SizedBox(
                          width: screenWidth * 0.005,
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.notifications_active,
                            size: 35,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.account_circle_rounded,
                            size: 38,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ],
                    ),
                  )
                ],
              ),

//===========================================================Body Tambah Project===========================================================//
              body: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(screenHeight * 0.05),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          SizedBox(width: screenWidth * 0.07),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Project',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: DropdownButton<String>(
                                      alignment: Alignment.center,
                                      hint: Text('--Pilih Nama/Kode Project--'),
                                      value: selectedValue,
                                      borderRadius: BorderRadius.circular(5),
                                      items: dropdownItems.map((String value) {
                                        return DropdownMenuItem<String>(
                                            value: value, child: Text(value));
                                      }).toList(),
                                      onChanged: (newValue) {
                                        setState(() {
                                          selectedValue = newValue;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'No Induk Finish Produk',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 7),
                                    width: 225,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: TextField(
                                      decoration: InputDecoration(),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 134.1),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'No Seri Awal',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextField(
                                      decoration: InputDecoration(),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Target Mulai',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextField(
                                      decoration: InputDecoration(),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(width: screenWidth * 0.2),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Nama Produk',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 7),
                                    width: 225,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: TextField(
                                      decoration: InputDecoration(),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 40),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Jumlah dalam 1 lot',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 7),
                                    width: 225,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius: BorderRadius.circular(5)),
                                    child: TextField(
                                      decoration: InputDecoration(),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Kode Lot',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextField(
                                      decoration: InputDecoration(),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'No Seri Akhir',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextField(
                                      decoration: InputDecoration(),
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(height: 30),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Target Selesai',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  ),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 15),
                                    width: 150,
                                    decoration: BoxDecoration(
                                        border: Border.all(),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: TextField(
                                      decoration: InputDecoration(),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 100),

//===========================================================Body Tambah Kolom===========================================================//
                      Container(
                        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
                        margin: EdgeInsets.all(50.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: isViewVisible
                            ? _buildViewTable()
                            : _buildMainTable(),
                      ),
                      SizedBox(width: 30),
                      Row(children: [
                        ElevatedButton(
                            onPressed: () {}, child: Text('Tambah Kolom')),
                        ElevatedButton(onPressed: () {}, child: Text('Simpan'))
                      ])
                    ],
                  ),
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }

//===========================================================Widget Table Alur===========================================================//
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
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Nomor Produk',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
            rows: [
              DataRow(cells: [
                DataCell(Text('PT. Nugraha Jasa')),
                DataCell(Text('AA21 1/24')),
                DataCell(Text('13-02-2024')),
              ]),
              DataRow(cells: [
                DataCell(Text('PT. INKA')),
                DataCell(Text('AA21 2/24')),
                DataCell(Text('13-02-2024')),
              ]),
              DataRow(cells: [
                DataCell(Text('PT. INKA')),
                DataCell(Text('AA21 2/24')),
                DataCell(Text('13-02-2024')),
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
        DataColumn(label: Text('Detail Kerusakan')),
        DataColumn(label: Text('Item')),
        DataColumn(label: Text('Keterangan')),
      ],
      rows: [
        DataRow(cells: [
          DataCell(Text('')),
          DataCell(Text('')),
          DataCell(Text('')),
        ]),
        DataRow(cells: [
          DataCell(Text('')),
          DataCell(Text('')),
          DataCell(Text('')),
        ]),
      ],
    );
  }

//===========================================================Widget Sidebar===========================================================//
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
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Perencanaan(),
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
