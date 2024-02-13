import 'package:flutter/material.dart';
import 'package:RekaChain/main.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController nipController;
  late TextEditingController passwordController;
  late double screenWidth;
  late double screenHeight;
  double hintTextSize = 14;

  @override
  void initState() {
    super.initState();
    nipController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: _page(),
      ),
    );
  }

  Widget _page() {
    return Container(
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.010,
              left: screenWidth * 0,
              right: 5.5,
            ),
            child: Image(
              image: AssetImage('assets/images/bolder31.png'),
              width: screenWidth * 1.9,
              height: screenHeight * 0.17,
              alignment: Alignment.centerLeft,
            ),
          ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: screenHeight * 0.15),
                Image.asset(
                  'assets/images/logoREKA.png',
                  width: screenWidth * 0.2,
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  "REKA CHAIN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHeight * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "PT. REKAINDO GLOBAL JASA",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenHeight * 0.03,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: screenHeight * 0.07),
                Text(
                  "Username :",
                  style: TextStyle(fontSize: screenHeight * 0.023),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: screenHeight * 0.005),
                _inputField("Username", nipController,
                    backgroundColor: Colors.white),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  "Password :",
                  style: TextStyle(fontSize: screenHeight * 0.023),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: screenHeight * 0.005),
                _inputField("Password", passwordController,
                    isPassword: true, backgroundColor: Colors.white),
                SizedBox(height: screenHeight * 0.025),
                _loginBtn(),
                Expanded(child: Container())
              ],
            ),
          ),
          Positioned(
            bottom: -screenHeight * 0.001,
            left: 0,
            child: Image(
              image: AssetImage('assets/images/Bolder21.png'),
              width: screenWidth * 1.89,
              height: screenHeight * 0.17,
            ),
          ),
        ],
      ),
    );
  }

  Widget _inputField(String hintText, TextEditingController controller,
      {bool isPassword = false, Color? backgroundColor}) {
    return SizedBox(
      width: screenWidth * 0.35,
      height: screenHeight * 0.04,
      child: Center(
        child: TextField(
          style: const TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              color: Color.fromARGB(255, 73, 72, 72),
              fontSize: hintTextSize * screenWidth / 1050,
            ),
            fillColor: backgroundColor,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          ),
          obscureText: isPassword,
        ),
      ),
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: const Color.fromRGBO(43, 56, 86, 1),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
      child: SizedBox(
        width: screenWidth * 0.317,
        height: screenHeight * 0.05,
        child: Center(
          child: Text(
            "Sign In",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: screenHeight * 0.021,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
