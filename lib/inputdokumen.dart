import 'package:RekaChain/AfterSales/AfterSales.dart';
import 'package:RekaChain/dasboard.dart';
<<<<<<< HEAD
import 'package:RekaChain/editprofile.dart';
import 'package:RekaChain/inputkebutuhanmaterial.dart';
=======
import 'package:RekaChain/inputkebutuhan%20material.dart';
>>>>>>> e1a616574a7dbb5f08a627538fd9f8adfc773ff5
import 'package:RekaChain/login.dart';
import 'package:RekaChain/notification.dart';
import 'package:RekaChain/perencanaan.dart';
import 'package:RekaChain/profile.dart';
import 'package:RekaChain/reportsttpp.dart';
import 'package:RekaChain/viewupload.dart';
import 'package:flutter/material.dart';

class InputDokumen extends StatefulWidget {
  const InputDokumen({super.key});

  @override
  State<InputDokumen> createState() => _InputDokumenState();
}

class _InputDokumenState extends State<InputDokumen> {
  late double screenWidth = MediaQuery.of(context).size.width;
  late double screenHeight = MediaQuery.of(context).size.height;

  int _selectedIndex = 0;
  List<String> dropdownItems = [
    '--Pilih Nama/Kode Project--',
    'R22-PT. Nugraha Jasa',
    'PT. INDAH JAYA'
  ];
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        screenWidth = constraints.maxWidth;
        screenHeight = constraints.maxHeight;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case '/':
                return MaterialPageRoute(
                  builder: (context) => const InputDokumen(),
                );
              default:
                return null;
            }
          },
          home: Scaffold(
            body: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildDrawer(),
                  Expanded(
                    child: Scaffold(
                      appBar: AppBar(
                        backgroundColor: const Color.fromRGBO(43, 56, 86, 1),
                        toolbarHeight: 65,
                        title: Padding(
                          padding: EdgeInsets.only(left: screenHeight * 0.01),
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
                            padding:
                                EdgeInsets.only(right: screenHeight * 0.11),
                            child: Row(
                              children: [
                                SizedBox(width: 16),
                                ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ViewUpload()),
                                    );
                                  },
                                  child: Text(
                                    'Uploads',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    foregroundColor: Colors.white,
                                    backgroundColor:
                                        Color.fromARGB(255, 89, 100, 122),
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
                                    size: 33,
                                    color: Colors.white,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Notifikasi()),
                                    );
                                  },
                                ),
                                IconButton(
                                  icon: Icon(
                                    Icons.account_circle_rounded,
                                    size: 35,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Profile()),
                                    );
                                  },
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      body: Container(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.04),
                          child: Column(
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Center(
                                child: Container(
                                  width: screenWidth * 0.6,
                                  height: screenHeight * 0.8,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: screenHeight * 0.09,
                                        horizontal: screenWidth * 0.05),
                                    child: Row(
                                      children: [
                                        SizedBox(width: screenWidth * 0.05),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Nama Project',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child:
                                                        DropdownButton<String>(
                                                      alignment:
                                                          Alignment.center,
                                                      hint: Text(
                                                          '--Pilih Nama Project--'),
                                                      underline: SizedBox(),
                                                      value: selectedValue,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      items: dropdownItems
                                                          .map((String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                      onChanged: (newValue) {
                                                        setState(() {
                                                          selectedValue =
                                                              newValue;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(height: 40),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Upload',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  Container(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 7),
                                                    width: 2000,
                                                    decoration: BoxDecoration(
                                                      border: Border.all(),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(width: 8),
                                                        IconButton(
                                                          icon: Icon(
                                                            Icons.add,
                                                            size: 35,
                                                          ),
                                                          onPressed: () {},
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(height: 10),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(width: screenWidth * 0.05),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'No Produk',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16,
                                                    ),
                                                  ),
                                                  Container(
                                                    decoration: BoxDecoration(
                                                      border: Border.all(),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                    ),
                                                    child:
                                                        DropdownButton<String>(
                                                      alignment:
                                                          Alignment.center,
                                                      hint: Text(
                                                          '--Pilih No Produk--'),
                                                      value: selectedValue,
                                                      underline: SizedBox(),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5),
                                                      items: dropdownItems
                                                          .map((String value) {
                                                        return DropdownMenuItem<
                                                            String>(
                                                          value: value,
                                                          child: Text(value),
                                                        );
                                                      }).toList(),
                                                      onChanged: (newValue) {
                                                        setState(() {
                                                          selectedValue =
                                                              newValue;
                                                        });
                                                      },
                                                    ),
                                                  ),
                                                  SizedBox(height: 341),
                                                  Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      children: [
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            _showFinishDialog();
                                                          },
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: const Color
                                                                .fromRGBO(
                                                                43, 56, 86, 1),
                                                          ),
                                                          child: Text(
                                                            'Simpan',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(width: 10),
                                                      ]),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 244, 249, 255),
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
      ),
      onTap: () {
        if (index == 7) {
          _showLogoutDialog();
        } else {
          setState(() {
            _selectedIndex = index;
          });
          if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ReportSTTPP(),
              ),
            );
          } else if (index == 3) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Perencanaan(),
              ),
            );
          } else if (index == 4) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InputMaterial(),
              ),
            );
          } else if (index == 5) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => InputDokumen(),
              ),
            );
          }
        }
      },
    );
  }

  void _showFinishDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Simpan Data", style: TextStyle(color: Colors.white)),
          content: Text("Apakah Anda yakin ingin simpan data?",
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
                  MaterialPageRoute(builder: (context) => const InputDokumen()),
                );
              },
              child: Text("Ya", style: TextStyle(color: Colors.white)),
            ),
          ],
        );
      },
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
