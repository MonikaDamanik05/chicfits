import 'package:ChicFits/screens/masuk_screen.dart';
import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.yellow[400],
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
                width: 200,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 80.0),
                child: Image.asset(
                  'assets/images/icon_chicfits.png',
                  height: 220,
                ),
              ),
              const SizedBox(height: 140),
              Center(
                child: Text(
                  'GAYA CERIA DENGAN',
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[700]),
                  textAlign: TextAlign.center, // Menengahkan teks
                ),
              ),
              const SizedBox(height: 35),
              const Center(
                child: Text(
                  'SEWA BAJU WISUDA',
                  style: TextStyle(
                      fontSize: 36,
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 76, 147, 209)),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 120),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) =>
                          LoginScreen(), // Navigasi ke halaman login
                    ),
                  );
                },
                child: Container(
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 26, vertical: 13),
                    child: Center(
                      child: Text(
                        'MULAI',
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
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
  }
}
