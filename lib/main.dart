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
    return Scaffold(
      backgroundColor: const Color(0xFFF1F5F9)

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


  Widget _buildPremiumHeader() {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [

        Container(
          height: 150,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF00529C), Color(0xFF0074D9)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(48),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Selamat Datang",
                      style: TextStyle(color: Colors.white70, fontSize: 13),
                    ),
                    Text(
                  "M Zainal Akbar",
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "Log Out",
                style: TextStyle(color: Colors.white, fontSize: 10),
              )
            ),
          ],
        ),
      ),
    ),


    Positioned(
      top: 90,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.88,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 15,
            offset: const Offset(0, 8),
          ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Tabungan BRI BritAma",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                  ),
                ),

                IconButton(
                  icon: const Icon(
                    Icons.visibility,
                    color: Color(0xFF00529C),
                  ),
                  onPressed: () {
                  },
                ),
              ],
            ),
            const Divider(height: 25, thickness: 0.5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Rp 12.500,00",
                  style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00529C),
                  ),
                ),
                const Icon(Icons.chevron_right, color: Colors.grey),
              ],
            ),
          ],
        ),
      ),
    ),
  ],
);
}


Widget _buildMenuGrid() {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        _categoryItem(Icons.send, "Transfer", Colors.blue),
        _categoryItem(Icons.wallet, "Dompet", Colors.orange),
        _categoryItem(Icons.receipt_long, "BRIVA", Colors.red),
        _categoryItem(Icons.phone_android, "Pulsa", Colors.green),
        _categoryItem(Icons.qr_code_scanner, "QRIS", Colors.purple),
        _categoryItem(Icons.volunteer_activism, "Donasi", Colors.pink),
        _categoryItem(Icons.stars, "Poin", Colors.amber),
        _categoryItem(Icons.grid_view, "Lainnya", Colors.blueGrey),
      ],
    ),
  );
}

Widget _categoryItem(IconData icon, String label, Color color) {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.02), blurRadius: 5),
          ],
        ),
        child: Icon(icon, color: color, size: 28),
      ),
      const SizedBox(height: 6),
      Text(
        label, 
        style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
      ),
    ],
  );
}

}
