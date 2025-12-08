import 'package:flutter/material.dart';
import 'screens/auth/login_screen.dart';
import 'screens/admin/dashboard_admin.dart';
import 'screens/dokter/dashboard_dokter.dart';
import 'screens/user/dashboard_user.dart';
import 'models/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplikasi Jadwal Dokter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginScreen(),
      routes: {
        '/admin': (context) => const DashboardAdmin(),
        '/dokter': (context) => const DashboardDokter(),
        '/pasien': (context) => const DashboardUser(),
      },
    );
  }
}

/// Fungsi untuk navigasi berdasar role
void navigateByRole(BuildContext context, UserModel user) {
  if (user.role == "admin") {
    Navigator.pushReplacementNamed(context, '/admin');
  } else if (user.role == "dokter") {
    Navigator.pushReplacementNamed(context, '/dokter');
  } else {
    Navigator.pushReplacementNamed(context, '/pasien');
  }
}
