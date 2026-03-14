import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF00529C),
      ),
      home: const BankingMainPage(),
    );
  }
}

class BankingMainPage extends StatefulWidget {
  const BankingMainPage({super.key});

  @override
  State<BankingMainPage> createState() => _BankingMainPageState();
}

class _BankingMainPageState extends State<BankingMainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: const Color(0xFFF1F5F9)

    appBar: AppBar(
      backgroundColor: const Color(0xFF00529C),
      elevation: 0,
      title: const Text(
        'BRImo',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.chat_bubble_outline, color: Colors.white),
          ),
        ],
      ),

body: SingleChildScrollView(
  child: Column(
    children: [
      _buildPremiumHeader(),

      const SizedBox(height: 100),
      _buildMenuGrid(),

      const SizedBox(height: 20),

      _buildPromoBanner(),
      _buildFooterInfo(),

    const SizedBox(height: 30),
    ],
  ),
),

bottomNavigationBar: BottomNavigationBar(
  type: BottomNavigationBarType.fixed,
  selectedItemColor: const Color(0xFF00529C),
  unselectedItemColor: Colors.grey,
  items: const [
    BottomNavigationBarItem(
    icon: Icon(Icons.home_filled),
    label: "Beranda",
    ),
    BottomNavigationBarItem(icon: Icon(Icons.history), label: "Mutasi"),
    BottomNavigationBarItem(
      icon: Icon(Icons.qr_code_scanner),
      label: "QRIS",
    ),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: "Akun"),
        ],
      ),
    );
  }
}
