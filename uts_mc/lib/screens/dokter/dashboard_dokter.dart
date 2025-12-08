import 'package:flutter/material.dart';

class DashboardDokter extends StatelessWidget {
  const DashboardDokter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Dashboard Dokter")),
      body: const Center(
        child: Text(
          "Halo Dokter!\nLihat jadwal Anda di sini.",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
