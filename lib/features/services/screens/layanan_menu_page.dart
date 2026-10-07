import 'package:flutter/material.dart';
import 'dummy_pages.dart';

class LayananMenuPage extends StatelessWidget {
  const LayananMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Menu Aplikasi',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // MENU 1
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TopUpPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.add_circle,
                                color: Colors.blue, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Top Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 2
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransferPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.send,
                                color: Colors.blue, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Transfer',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 3
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ScanQRPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.qr_code_scanner,
                                color: Colors.orange, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Scan QR',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 4
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RiwayatPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.receipt_long,
                                color: Colors.green, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Riwayat',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // MENU 5
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PulsaPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.phone_android,
                                color: Colors.pinkAccent, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Pulsa & Data',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 6
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const VoucherGamePage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.sports_esports,
                                color: Colors.orange, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Voucher Game',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 7
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TransportasiPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.purple.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.directions_bus,
                                color: Colors.purple, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Transportasi',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 8
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TagihanAirPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.water_drop,
                                color: Colors.blue, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Tagihan Air',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // MENU 9
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ListrikPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.bolt,
                                color: Colors.green, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Listrik',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 10
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const TvKabelPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.pinkAccent.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.tv,
                                color: Colors.pinkAccent, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('TV Kabel',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 11
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StreamingPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.deepPurple.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.credit_card,
                                color: Colors.deepPurple, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Streaming',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 12
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const BelanjaOnlinePage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.pink.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.shopping_bag,
                                color: Colors.pink, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Belanja Online',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // MENU 13
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DonasiPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.volunteer_activism,
                                color: Colors.blue, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Donasi',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 14
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const AsuransiPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.green.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.shield,
                                color: Colors.green, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Asuransi',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 15
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const InvestasiPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.orange.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.monetization_on,
                                color: Colors.orange, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Investasi',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                  // MENU 16
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LainnyaPage())),
                    child: SizedBox(
                      width: 80,
                      child: Column(
                        children: [
                          Container(
                            width: 60,
                            height: 60,
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.15),
                                borderRadius: BorderRadius.circular(16)),
                            child: const Icon(Icons.grid_view,
                                color: Colors.grey, size: 30),
                          ),
                          const SizedBox(height: 8),
                          const Text('Lainnya',
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
