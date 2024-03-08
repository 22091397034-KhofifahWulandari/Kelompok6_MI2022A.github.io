import 'package:flutter/material.dart';

void main() {
  runApp(const KartuNamaApp());
}

class KartuNamaApp extends StatelessWidget {
  const KartuNamaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Name Cards'), // Judul AppBar
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Kartu(
                nama: 'Farida Muthiah Fathin', // Nama
                instagram: '@faridaamuthiah', // Nama pengguna Instagram
                backgroundImage:
                    AssetImage('images/farida.jpg'), // Latar belakang gambar
                jobDeck: 'Data Analyst', // Posisi pekerjaan
              ),
              Kartu(
                nama: 'Lady Cristal Beauty Aqluilera', // Nama
                instagram: '@crstl_aq', // Nama pengguna Instagram
                backgroundImage:
                    AssetImage('images/lady.jpg'), // Latar belakang gambar
                jobDeck: 'UI/UX Designer', // Posisi pekerjaan
              ),
              Kartu(
                nama: 'Khofifah Wulandari', // Nama
                instagram: '@khof.ifah_04', // Nama pengguna Instagram
                backgroundImage:
                    AssetImage('images/fa1.jpg'), // Latar belakang gambar
                jobDeck: 'Software Engineer', // Posisi pekerjaan
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Kartu extends StatelessWidget {
  final String nama; // Variabel nama
  final String instagram; // Variabel nama pengguna Instagram
  final AssetImage backgroundImage; // Variabel latar belakang gambar
  final String jobDeck; // Variabel posisi pekerjaan

  const Kartu({
    Key? key,
    required this.nama,
    required this.instagram,
    required this.backgroundImage,
    required this.jobDeck,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10, // Elevasi Kartu
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20), // Bentuk Kartu
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.black,
              Colors.indigo
            ], // Gradien warna latar belakang
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white, // Warna border lingkaran
                    width: 3,
                  ),
                  gradient: const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.purple,
                      Colors.pink
                    ], // Gradien warna untuk logo Instagram
                  ),
                ),
                child: CircleAvatar(
                  radius: 60, // Radius Avatar lingkaran
                  backgroundImage:
                      backgroundImage, // Gambar latar belakang Avatar
                ),
              ),
              const SizedBox(height: 10),
              Text(
                nama,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Merienda', // Font Nama
                  color: Colors.white, // Warna Font Nama
                ),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ShaderMask(
                    shaderCallback: (Rect bounds) {
                      return const LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.pink,
                          Colors.purple
                        ], // Gradien warna untuk logo Instagram
                      ).createShader(bounds);
                    },
                    child: Image.asset(
                      'images/instagram.png', // Path gambar ikon Instagram
                      width: 20, // Lebar ikon Instagram
                      height: 20, // Tinggi ikon Instagram
                      color: Colors.white, // Warna ikon Instagram
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    instagram, // Nama pengguna Instagram
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.white, // Warna Font Instagram
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Text(
                jobDeck, // Posisi pekerjaan
                style: const TextStyle(
                  fontStyle: FontStyle.italic,
                  fontSize: 16,
                  color: Colors.white, // Warna Font Posisi Pekerjaan
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
