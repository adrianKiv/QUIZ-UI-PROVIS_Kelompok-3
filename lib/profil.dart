import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
            'Profil',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24, // Ubah sesuai ukuran yang diinginkan
              fontWeight: FontWeight.bold, // Ubah sesuai ketebalan yang diinginkan
              fontFamily: 'Sans-serif', // Ubah sesuai jenis font yang diinginkan
            ),
          ),
        backgroundColor: const Color(0xFF003366),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Masukkan Foto Profil'),
            ),
            const TextField(decoration: InputDecoration(labelText: 'Nama Panjang')),
            const TextField(decoration: InputDecoration(labelText: 'NIK')),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Tanggal Lahir',
                suffixIcon: Icon(Icons.calendar_today),
              ),
            ),
            DropdownButton<String>(
              value: 'Perempuan',
              items: <String>['Perempuan', 'Laki-laki'].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {},
            ),
            const TextField(decoration: InputDecoration(labelText: 'Email')),
            const TextField(decoration: InputDecoration(labelText: 'Alamat Rumah')),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Simpan', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}