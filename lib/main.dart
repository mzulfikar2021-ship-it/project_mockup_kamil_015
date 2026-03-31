import 'package:flutter/material.dart';
import 'home_page.dart';

void main() => runApp(
  const MaterialApp(home: CoffeePage(), debugShowCheckedModeBanner: false),
);

class CoffeePage extends StatelessWidget {
  const CoffeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1E140C),
      body: Column(
        children: [
          // BAGIAN GAMBAR
          Expanded(
            flex: 3,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Image.asset('assets/kopi.png', fit: BoxFit.cover),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.transparent, const Color(0xFF1E140C)],
                    ),
                  ),
                ),
              ],
            ),
          ),

          // BAGIAN TEKS & TOMBOL
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  const Text(
                    "Time for a coffee break....",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    "Your daily dose of fresh brew delivered to your doorstep. Start your coffee journey now!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),

                  const Spacer(),

                  // INDIKATOR TITIK
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [_dot(false), _dot(false), _dot(true)],
                  ),

                  const Spacer(),

                  // 🔥 TOMBOL ORANGE
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFC67C4E), // ORANGE
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CoffeeHomePage(),
                          ),
                        );
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _dot(bool active) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: 5,
      width: active ? 25 : 8,
      decoration: BoxDecoration(
        color: active ? Colors.white : Colors.white24,
        borderRadius: BorderRadius.circular(5),
      ),
    );
  }
}