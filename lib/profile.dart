import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/images/logoREKA.png',
              width: 250,
              height: 300,
            ),
            SizedBox(width: 10),
          ],
        ),
        toolbarHeight: 100.0,
      ),
      body: Row(
        children: [
          Container(
            width: 270,
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildAvatar(),
                Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromRGBO(43, 56, 86, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 20,
                      ),
                    ),
                    child: const Text('Ubah Profile'),
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: const Color.fromRGBO(43, 56, 86, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 20,
                        ),
                      ),
                      child: const Text('Kembali'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Main content
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: _buildRightSection(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRightSection() {
    return Stack(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              color: Color.fromRGBO(43, 56, 86, 1),
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                'PROFIL SAYA',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Donegal One',
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.start,
              ),
            ),
            SizedBox(height: 16.0),
            // Letak widget content
            _buildDivider(),
            _buildTextView(' Nama Lengkap', text: ''),
            _buildDivider(),
            _buildTextView(' Jabatan', text: ''),
            _buildDivider(),
            _buildTextView(' Unit Kerja', text: ''),
            _buildDivider(),
            _buildTextView(' Departemen', text: ''),
            _buildDivider(),
            _buildTextView(' Divisi', text: ''),
            _buildDivider(),
            _buildTextView(' Nomor Telepon', text: ''),
            _buildDivider(),
            _buildTextView(' NIP', text: ''),
            _buildDivider(),
            _buildTextView(' Password', text: ''),
            _buildDivider(),
            _buildTextView(' Status', text: ''),
            SizedBox(height: 16.0),
          ],
        ),
        Positioned(
          top: 380,
          bottom: 0,
          left: 800,
          child: Image.asset(
            'assets/images/icon.png',
            width: 500,
            height: 500,
          ),
        ),
      ],
    );
  }

  Widget _buildTextView(String label, {required String text}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          text,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }

  Widget _buildDivider() {
    return Divider(
      color: Colors.grey,
      thickness: 1.0,
      height: 16.0,
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: double.infinity,
      height: 125.0,
      decoration: BoxDecoration(
        border: Border.all(width: 4, color: Colors.white),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 10,
            color: Colors.black.withOpacity(0.1),
          ),
        ],
        shape: BoxShape.circle,
        image: const DecorationImage(
          fit: BoxFit.cover,
          alignment: Alignment.center,
          image: AssetImage('assets/images/profile-illustration.png'),
        ),
      ),
    );
  }
}
