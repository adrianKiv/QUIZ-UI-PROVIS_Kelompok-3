import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  String jenisKelamin = "Perempuan";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Profil',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
            fontFamily: 'Sans-serif',
          ),
        ),
        backgroundColor: const Color(0xFF003366),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // Top container with solid color
            Container(
              height: 90,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10)
                ),
                color: Color(0xFF003366)),
            ),
            // Bottom container with rounded corners and white background
            Positioned(
              // Adjust positioning for better alignment if needed
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                margin: const EdgeInsets.all(16.0),
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: const Color(0xFF003366)),
                  // boxShadow: [
                  //   BoxShadow(
                  //     color: Colors.grey.withOpacity(0.5),
                  //     spreadRadius: 5,
                  //     blurRadius: 7,
                  //     offset: const Offset(0, 3),
                  //   ),
                  // ],
                ),
                child: SingleChildScrollView( // Allow scrolling if content overflows
                  child: Column(
                    children: [
                      // Row for photo and name
                      Row(
                        children: [
                          const SizedBox(width: 30.0),
                          GestureDetector(
                            onTap: () {
                              // TODO: Implement photo upload functionality
                            },
                            child: Container(
                              height: 100,
                              width: 100, // Adjust width as needed
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: const Color(0xFF003366), width: 2.0), // Add blue border
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    'Masukkan Foto Profil',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.normal,
                                      color: Color(0xFF003366),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  SizedBox( 
                                    width: double.infinity, // Make container take full available width
                                    child:ElevatedButton(
                                      onPressed: () {
                                      },
                                      child: Text('Ubah', style: TextStyle(color: Colors.white)),
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF003366)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(5),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 20.0), // Add spacing between photo and name
                          const Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Nama Panjang',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF003366),
                                  ),
                                ),
                                TextField(
                                    textAlign: TextAlign.left,
                                    textAlignVertical: TextAlignVertical.top,
                                    decoration: InputDecoration(
                                    hintText: 'Masukkan nama lengkap',
                                    contentPadding: EdgeInsets.only(bottom: 40, left: 10, top: 20),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),   // This line adds the box around the TextField
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'NIK',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF003366),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Masukkan NIK anda',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),   // This line adds the box around the TextField
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: [
                                const Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    'Tanggal Lahir',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF003366),
                                    ),
                                  ),
                                ),
                                TextField(
                                  textAlign: TextAlign.left,
                                  textInputAction: TextInputAction.next,
                                  decoration: const InputDecoration(
                                    hintText: 'DD/MM/YYYY',
                                    suffixIcon: Icon(Icons.calendar_month),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10)),
                                    ),
                                  ),
                                  onTap: () async {
                                    FocusScope.of(context).requestFocus(new FocusNode());
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2100),
                                    );
                                    if (pickedDate != null) {
                                      String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
                                      (context as Element).markNeedsBuild();
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20), // You can adjust the space between the two columns here
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  'Gender',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF003366),
                                  ),
                                ),
                                DropdownButtonFormField<String>(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.all(Radius.circular(10))
                                    )
                                  ),
                                  value: jenisKelamin,
                                  items: <String>['Perempuan', 'Laki-laki'].map((String gender) => DropdownMenuItem<String>(
                                        value: gender,
                                        child: Text(gender),
                                      ))
                                      .toList(),
                                  onChanged: (value) => setState(() => jenisKelamin = value!),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF003366),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Masukkan Email anda',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),   // This line adds the box around the TextField
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Alamat Rumah',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF003366),
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              hintText: 'Masukkan Alamat Rumah anda',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                              ),   // This line adds the box around the TextField
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 200, // Lebar tombol
                        height: 45, // Tinggi tombol
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          child: Text('Simpan', style: TextStyle(color: Colors.white)),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF003366)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                )
              ),
            )
          ]
        )
      ),
    );
  }
}