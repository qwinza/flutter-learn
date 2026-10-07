import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../widgets/dashboard_headers.dart';
import '../widgets/grid_menu_item.dart';

class DashboardGridPage extends StatelessWidget {
  const DashboardGridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor:
            AppColors.primary, 
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); 
          },
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const DashboardHeader(),

            const SizedBox(height: 12),
            const SizedBox(height: 8),

            Expanded(
              child: GridView.count(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 1.1,
                children: [
                  GridMenuItem(
                    title: 'Daftar Buku',
                    subtitle: 'Lihat koleksi buku yang tersedia',
                    icon: Icons.menu_book,
                    iconColor: AppColors.iconBlue,
                    bgColor: AppColors.bgBlue,
                    onTap: () {},
                  ),
                  GridMenuItem(
                    title: 'Tambah Buku',
                    subtitle: 'Tambahkan data buku baru',
                    icon: Icons.add_box,
                    iconColor: AppColors.iconGreen,
                    bgColor: AppColors.bgGreen,
                    onTap: () {},
                  ),
                  GridMenuItem(
                    title: 'Riwayat\nPeminjaman',
                    subtitle: 'Lihat buku yang pernah dipinjam',
                    icon: Icons.history,
                    iconColor: AppColors.iconOrange,
                    bgColor: AppColors.bgOrange,
                    onTap: () {},
                  ),
                  GridMenuItem(
                    title: 'Kategori Buku',
                    subtitle: 'Jelajahi buku berdasarkan kategori',
                    icon: Icons.category,
                    iconColor: AppColors.iconPurple,
                    bgColor: AppColors.bgPurple,
                    onTap: () {},
                  ),
                  GridMenuItem(
                    title: 'Buku Favorit',
                    subtitle: 'Lihat buku yang disukai',
                    icon: Icons.favorite,
                    iconColor: AppColors.iconPink,
                    bgColor: AppColors.bgPink,
                    onTap: () {},
                  ),
                  GridMenuItem(
                    title: 'Profil Saya',
                    subtitle: 'Lihat dan kelola informasi akun',
                    icon: Icons.account_circle,
                    iconColor: AppColors.iconBlue,
                    bgColor: AppColors.bgBlue,
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
