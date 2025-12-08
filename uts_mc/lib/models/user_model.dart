class UserModel {
  final String id;
  final String nama;
  final String email;
  final String role; 
  // admin / pasien / dokter

  UserModel({
    required this.id,
    required this.nama,
    required this.email,
    required this.role,
  });
}
