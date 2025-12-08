import 'package:flutter/material.dart';

class DashboardUser extends StatelessWidget {
  const DashboardUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard Pasien")),
      body: const Center(
        child: Text(
          "Selamat datang!\nLihat jadwal dokter.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
