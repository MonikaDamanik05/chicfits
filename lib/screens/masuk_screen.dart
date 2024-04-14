import 'package:ChicFits/main.dart';
import 'package:flutter/material.dart';
import 'daftar_screen.dart';
import 'masukkan_email_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35),
          Center(
            child: Column(
              children: [
                SizedBox(height: 60),
                Image.asset(
                  'assets/images/icon_chicfits.png',
                  height: 150,
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Row(
            children: [
              Text(
                'Selamat Datang di ',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                'ChicFits!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.teal[300],
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          Text(
            'Aplikasi Sewa Baju Wisuda',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              labelText: 'E-mail',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 30),
          TextField(
            decoration: InputDecoration(
              labelText: 'Password',
              border: OutlineInputBorder(),
            ),
            obscureText: true,
          ),
          SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MasukkanEmail()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(right: 16.0),
                  child: Text(
                    'Lupa Password?',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 101, 202, 18),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Spacer(),
          SizedBox(height: 52),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const MyHomePage(title: 'Home Screen')),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(vertical: 22, horizontal: 28),
                textStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
              child: Text('Log In'),
            ),
          ),
          SizedBox(height: 32),
          SizedBox(height: 15),
          Center(
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: RichText(
                text: TextSpan(
                  text: 'Belum Punya Akun ? ',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: 'Daftar Sekarang',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 101, 202, 18),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
