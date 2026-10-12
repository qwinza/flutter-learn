import 'package:flutter_test/flutter_test.dart';
import 'package:tugas1_152024038/main.dart';
import 'package:tugas1_152024038/home_page.dart';
import 'package:tugas1_152024038/profile_page.dart';
import 'package:tugas1_152024038/detail_page.dart';

void main() {
  testWidgets('Alur navigasi lengkap Home -> Profile -> Detail dan kembali',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    expect(find.byType(HomePage), findsOneWidget);
    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Aplikasi Profil\nMahasiswa'), findsOneWidget);
    expect(find.text('Belajar Navigasi di Flutter'), findsOneWidget);
    expect(find.text('Buka Profile'), findsOneWidget);

    await tester.tap(find.text('Buka Profile'));
    await tester.pumpAndSettle();

    expect(find.byType(ProfilePage), findsOneWidget);
    expect(find.text('Profile'), findsOneWidget);
    expect(find.text('Nama'), findsOneWidget);
    expect(find.text('Aa Faris Ahmad Shidiq'), findsOneWidget);
    expect(find.text('NIM'), findsOneWidget);
    expect(find.text('152024038'), findsOneWidget);
    expect(find.text('Buka Detail'), findsOneWidget);
    expect(find.text('Kembali ke Home'), findsOneWidget);

    await tester.tap(find.text('Buka Detail'));
    await tester.pumpAndSettle();

    expect(find.byType(DetailPage), findsOneWidget);
    expect(find.text('Detail'), findsOneWidget);
    expect(find.text('Aa Faris Ahmad Shidiq'), findsOneWidget);
    expect(find.text('152024038'), findsOneWidget);
    expect(find.text('Program Studi'), findsOneWidget);
    expect(find.text('Informatika'), findsOneWidget);
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('farisahmad1210@gmail.com'), findsOneWidget);
    expect(find.text('Tentang Saya'), findsOneWidget);
    expect(
      find.text('Saya adalah mahasiswa yang tertarik pada pengembangan aplikasi mobile.'),
      findsOneWidget,
    );
    expect(find.text('Kembali ke Profile'), findsOneWidget);

    await tester.tap(find.text('Kembali ke Profile'));
    await tester.pumpAndSettle();

    expect(find.byType(DetailPage), findsNothing);
    expect(find.byType(ProfilePage), findsOneWidget);

    await tester.tap(find.text('Kembali ke Home'));
    await tester.pumpAndSettle();

    expect(find.byType(ProfilePage), findsNothing);
    expect(find.byType(HomePage), findsOneWidget);
  });
}
