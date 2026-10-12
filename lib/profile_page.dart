import 'package:flutter/material.dart';
import 'detail_page.dart';

class ProfilePage extends StatelessWidget {
  final String nama;
  final String nim;
  final String email;

  const ProfilePage({
    super.key,
    this.nama = 'Aa Faris Ahmad Shidiq',
    this.nim = '152024038',
    this.email = 'farisahmad1210@gmail.com',
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 140,
                height: 140,
                decoration: const BoxDecoration(
                  color: Color(0xFFD4EFEA),
                  shape: BoxShape.circle,
                ),
                child: ClipOval(
                  child: CustomPaint(
                    size: const Size(140, 140),
                    painter: _AvatarPainter(),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Nama',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                nama,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'NIM',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                nim,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 36),
              SizedBox(
                width: 220,
                height: 48,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(
                          nama: nama,
                          nim: nim,
                          email: email,
                        ),
                      ),
                    );
                  },
                  icon: const Icon(Icons.person_outline, size: 20),
                  label: const Text(
                    'Buka Detail',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E8E5A),
                    foregroundColor: Colors.white,
                    elevation: 1,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              SizedBox(
                width: 220,
                height: 48,
                child: OutlinedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back, size: 20),
                  label: const Text(
                    'Kembali ke Home',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black87,
                    side: BorderSide(color: Colors.grey.shade300),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
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

class _AvatarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final double cx = size.width / 2;
    final double cy = size.height / 2;

    final Paint shirtPaint = Paint()
      ..color = const Color(0xFF1976D2)
      ..style = PaintingStyle.fill;

    final Path bodyPath = Path()
      ..moveTo(cx - size.width * 0.40, size.height)
      ..quadraticBezierTo(
        cx - size.width * 0.28,
        cy + 18,
        cx,
        cy + 22,
      )
      ..quadraticBezierTo(
        cx + size.width * 0.28,
        cy + 18,
        cx + size.width * 0.40,
        size.height,
      )
      ..close();
    canvas.drawPath(bodyPath, shirtPaint);

    final Paint neckPaint = Paint()
      ..color = const Color(0xFFFFD9C2)
      ..style = PaintingStyle.fill;
    final RRect neckRRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: Offset(cx, cy + 16),
        width: 22,
        height: 20,
      ),
      const Radius.circular(6),
    );
    canvas.drawRRect(neckRRect, neckPaint);

    final Paint facePaint = Paint()
      ..color = const Color(0xFFFFD9C2)
      ..style = PaintingStyle.fill;

    final RRect faceRRect = RRect.fromRectAndRadius(
      Rect.fromCenter(
        center: Offset(cx, cy * 0.82),
        width: size.width * 0.36,
        height: size.height * 0.40,
      ),
      const Radius.circular(24),
    );
    canvas.drawRRect(faceRRect, facePaint);

    final Paint hairPaint = Paint()
      ..color = const Color(0xFF2C3437)
      ..style = PaintingStyle.fill;

    final Path hairPath = Path()
      ..moveTo(cx - size.width * 0.22, cy * 0.75)
      ..quadraticBezierTo(
        cx - size.width * 0.22,
        cy * 0.45,
        cx,
        cy * 0.45,
      )
      ..quadraticBezierTo(
        cx + size.width * 0.22,
        cy * 0.45,
        cx + size.width * 0.22,
        cy * 0.75,
      )
      ..quadraticBezierTo(
        cx + size.width * 0.12,
        cy * 0.65,
        cx,
        cy * 0.68,
      )
      ..quadraticBezierTo(
        cx - size.width * 0.12,
        cy * 0.65,
        cx - size.width * 0.22,
        cy * 0.75,
      )
      ..close();
    canvas.drawPath(hairPath, hairPaint);

    final Paint eyePaint = Paint()
      ..color = const Color(0xFF212121)
      ..style = PaintingStyle.fill;
    canvas.drawCircle(Offset(cx - 10, cy * 0.82), 2.3, eyePaint);
    canvas.drawCircle(Offset(cx + 10, cy * 0.82), 2.3, eyePaint);

    final Paint smilePaint = Paint()
      ..color = const Color(0xFF5D4037)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.6
      ..strokeCap = StrokeCap.round;

    final Path smilePath = Path()
      ..moveTo(cx - 5, cy * 0.92)
      ..quadraticBezierTo(cx, cy * 0.98, cx + 5, cy * 0.92);
    canvas.drawPath(smilePath, smilePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
