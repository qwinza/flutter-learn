import 'package:flutter/material.dart';
// Perbaiki jalurnya agar menunjuk ke dalam folder features/services/screens/
import 'features/services/screens/layanan_menu_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Menu',
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LayananMenuPage(),
    );
  }
}
