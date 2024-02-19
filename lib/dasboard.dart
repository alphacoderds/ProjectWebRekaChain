import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(ChartApp());
}

class ChartApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('CHN', 12),
      _ChartData('GER', 15),
      _ChartData('RUS', 30),
      _ChartData('BRZ', 6.4),
      _ChartData('IND', 14),
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Syncfusion Flutter chart'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.0), // Geser ke kanan
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0, // Sesuaikan lebar sesuai keinginan Anda
                  height: 300.0, // Sesuaikan tinggi sesuai keinginan Anda
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis:
                        NumericAxis(minimum: 0, maximum: 40, interval: 10),
                    tooltipBehavior: _tooltip,
                    series: <CartesianSeries<_ChartData, String>>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        name: 'Gold',
                        color: Color.fromRGBO(8, 142, 255, 1),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20), // Jarak antara dua grafik batang
                Container(
                  width: 300.0, // Sesuaikan lebar sesuai keinginan Anda
                  height: 300.0, // Sesuaikan tinggi sesuai keinginan Anda
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis:
                        NumericAxis(minimum: 0, maximum: 40, interval: 10),
                    tooltipBehavior: _tooltip,
                    series: <CartesianSeries<_ChartData, String>>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        name: 'Gold',
                        color: Color.fromRGBO(8, 142, 255, 1),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20), // Jarak antara dua baris grafik batang
          Padding(
            padding: EdgeInsets.only(left: 20.0), // Geser ke kanan
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 300.0, // Sesuaikan lebar sesuai keinginan Anda
                  height: 300.0, // Sesuaikan tinggi sesuai keinginan Anda
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis:
                        NumericAxis(minimum: 0, maximum: 40, interval: 10),
                    tooltipBehavior: _tooltip,
                    series: <CartesianSeries<_ChartData, String>>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        name: 'Gold',
                        color: Color.fromRGBO(8, 142, 255, 1),
                      )
                    ],
                  ),
                ),
                SizedBox(width: 20), // Jarak antara dua grafik batang
                Container(
                  width: 300.0, // Sesuaikan lebar sesuai keinginan Anda
                  height: 300.0, // Sesuaikan tinggi sesuai keinginan Anda
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis:
                        NumericAxis(minimum: 0, maximum: 40, interval: 10),
                    tooltipBehavior: _tooltip,
                    series: <CartesianSeries<_ChartData, String>>[
                      BarSeries<_ChartData, String>(
                        dataSource: data,
                        xValueMapper: (_ChartData data, _) => data.x,
                        yValueMapper: (_ChartData data, _) => data.y,
                        name: 'Gold',
                        color: Color.fromRGBO(8, 142, 255, 1),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Dashboard(), // Tambahkan Dashboard di sini
        ],
      ),
    );
  }
}

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

class _ChartData {
  _ChartData(this.x, this.y);
  final String x;
  final double y;
}
