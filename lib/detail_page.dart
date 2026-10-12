import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String nama;
  final String nim;
  final String programStudi;
  final String email;
  final String tentangSaya;

  const DetailPage({
    super.key,
    this.nama = 'Aa Faris Ahmad Shidiq',
    this.nim = '152024038',
    this.programStudi = 'Informatika',
    this.email = 'farisahmad1210@gmail.com',
    this.tentangSaya =
        'Saya adalah mahasiswa yang tertarik pada pengembangan aplikasi mobile.',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInfoRow(
              icon: Icons.school,
              label: 'Nama',
              value: nama,
            ),
            const SizedBox(height: 20),
            _buildInfoRow(
              icon: Icons.badge,
              label: 'NIM',
              value: nim,
            ),
            const SizedBox(height: 20),
            _buildInfoRow(
              icon: Icons.menu_book,
              label: 'Program Studi',
              value: programStudi,
            ),
            const SizedBox(height: 20),
            _buildInfoRow(
              icon: Icons.email,
              label: 'Email',
              value: email,
            ),
            const SizedBox(height: 20),
            _buildInfoRow(
              icon: Icons.article,
              label: 'Tentang Saya',
              value: tentangSaya,
            ),
            const SizedBox(height: 36),
            Center(
              child: SizedBox(
                width: 220,
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, size: 20),
                  label: const Text(
                    'Kembali ke Profile',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF6750A4),
                    foregroundColor: Colors.white,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: const Color(0xFF1976D2),
          size: 28,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 2),
              Text(
                value,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
