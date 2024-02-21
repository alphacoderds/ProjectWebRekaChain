import 'package:RekaChain/dasboard.dart';
import 'package:flutter/material.dart';

class CustomPage extends StatefulWidget {
  const CustomPage({Key? key}) : super(key: key);

  @override
  _CustomPageState createState() => _CustomPageState();
}

class _CustomPageState extends State<CustomPage> {
  // List of items for the dropdown
  final List<String> _dropdownItems = ['Project 1', 'Project 2', 'Project 3'];

  // Selected value of the dropdown
  String _selectedDropdownValue = 'Project 1';

  // Controller for the project code text field
  final TextEditingController _projectCodeController = TextEditingController();

  @override
  void dispose() {
    _projectCodeController.dispose();
    super.dispose();
  }

  // Function to handle changing dropdown value
  void _onDropdownChanged(String? newValue) {
    // Memperbaiki tipe data parameter newValue
    if (newValue != null) {
      setState(() {
        _selectedDropdownValue = newValue;
        // Assuming some logic to generate project code based on project name
        // Here, just a simple logic to demonstrate
        _projectCodeController.text =
            newValue.toLowerCase().replaceAll(' ', '_');
      });
    }
  }

  // Function to handle button press
  void _onButtonPressed() {
    // Navigate to another page
    // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => AnotherPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Row(
          children: [
            Expanded(flex: 2, child: Dashboard()),
            Expanded(
              flex: 6,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Dropdown widget
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors
                                .grey), // Atur warna garis sesuai kebutuhan
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButton<String>(
                        value: _selectedDropdownValue,
                        onChanged: _onDropdownChanged,
                        items: _dropdownItems.map((item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(
                        width: 50), // Spacer between dropdown and text field
                    // Text field for project code
                    SizedBox(
                      width: 300,
                      child: TextFormField(
                        controller: _projectCodeController,
                        decoration: InputDecoration(
                          labelText: 'Project Code',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 50), // Spacer between text field and button
                    // Icon button
                    IconButton(
                      onPressed: _onButtonPressed,
                      icon: Icon(Icons.visibility),
                      tooltip: 'View',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CustomPage(),
  ));
}
