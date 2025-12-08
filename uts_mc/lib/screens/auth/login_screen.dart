import 'package:flutter/material.dart';
import '../../models/user_model.dart';
import '../../main.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController passC = TextEditingController();

  String selectedRole = "admin";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            padding: const EdgeInsets.all(24),
            width: 330,
            decoration: BoxDecoration(
              color: Colors.blue.shade50,
              borderRadius: BorderRadius.circular(12),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 8),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text(
                  "Login Aplikasi",
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),

                TextField(
                  controller: emailC,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10),

                TextField(
                  controller: passC,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 15),

                DropdownButtonFormField(
                  value: selectedRole,
                  items: const [
                    DropdownMenuItem(value: "admin", child: Text("Admin")),
                    DropdownMenuItem(value: "dokter", child: Text("Dokter")),
                    DropdownMenuItem(value: "pasien", child: Text("Pasien/User")),
                  ],
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Pilih Role",
                  ),
                  onChanged: (value) {
                    setState(() {
                      selectedRole = value.toString();
                    });
                  },
                ),

                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    final user = UserModel(
                      id: "1",
                      nama: "Test User",
                      email: emailC.text,
                      role: selectedRole,
                    );

                    navigateByRole(context, user);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    minimumSize: const Size(double.infinity, 48),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text("LOGIN", style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
