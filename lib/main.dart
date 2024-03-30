import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz UI Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Quiz UI Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Text(
              'Nomor Kelompok: 3',
            ),
            const Text(
              'Mhs 1: 2200939_Adrian Mulianto',
            ),
            const Text(
              'Mhs 2: 2201017_Ilham Akbar',
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo1();
                  }));
                },
                child: const Text('   Jawaban No 1   '),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return soalNo2();
                  }));
                },
                child: const Text('   Jawaban No 2   '),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //jaawaban no 1
  Widget soalNo1() {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF003366),
        ),
        body: const Profil(),
    );
  }

  //jaawaban no 2
  Widget soalNo2() {
    return const Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // ),
        body: Home()
    );
  }
}

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfileState();
}

class _ProfileState extends State<Profil> {
  String jenisKelamin = "Perempuan";
  final TextEditingController _dateController = TextEditingController();
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
            Positioned(
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
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // Row for photo and name
                      Row(
                        children: [
                          const SizedBox(width: 40.0),
                          GestureDetector(
                            onTap: () {
                            },
                            child: Container(
                              height: 110,
                              width: 110,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(color: const Color(0xFF003366), width: 2.0),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Masukkan Foto Profil',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF003366),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(),
                                  ),
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () {
                                      },
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF003366)),
                                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                                          const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(4),
                                                bottomRight: Radius.circular(4)
                                            ),
                                          ),
                                        ),
                                      ),
                                      child: const Text(
                                        'Ubah',
                                        style: TextStyle(
                                        color: Colors.white
                                        )
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(width: 45),
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
                                    ),
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
                              ),
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
                                  controller: _dateController, // Gunakan controller di sini
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
                                    FocusScope.of(context).requestFocus(FocusNode());
                                    DateTime? pickedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(1900),
                                      lastDate: DateTime(2100),
                                    );
                                    if (pickedDate != null) {
                                      // buka komentar import dan kode di bawah untuk menyimpan data calendar //
                                      String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate);
                                      _dateController.text = formattedDate;
                                    }
                                  },
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 20),
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
                              ),
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
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      SizedBox(
                        width: 200, // Lebar tombol
                        height: 45, // Tinggi tombol
                        child: ElevatedButton(
                          onPressed: () {
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF003366)),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Simpan',
                              style: TextStyle(
                              color: Colors.white, 
                              fontWeight: FontWeight.bold
                            )
                          ),
                        ),
                      ),
                      const SizedBox(height: 70)
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

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static late double screenHeight;
  static late double screenWidth;
  static late double ukuran;
  
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 300) {
      ukuran = 10;
    }else if(screenWidth < 350){
      ukuran = 5;
    }else{
      ukuran = 0;
    }
    return Scaffold(
      bottomNavigationBar: const BottomNavigasiBar(
        inputan: 0,
      ),
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: screenHeight * 0.3,
                decoration: const BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                    ),
                    border: Border(
                      bottom: BorderSide(
                        color: Colors.black, // Warna border
                        width: 2, // Lebar border
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: screenHeight * 0.03, left: screenWidth * 0.03),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: screenWidth * 0.6,
                        child: Column(
                          children: [
                            Image.network(
                              "https://fastly.picsum.photos/id/357/600/200.jpg?hmac=qX5qCu2B_PqB5O7vcBGOIn11NuNCrPLp687CRDXd9Ok",
                              height: 50 - ukuran,
                              width: screenWidth * 1,
                              fit: BoxFit.cover,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: (screenHeight * 0.08) - ukuran),
                              child:  Column(
                                children: [
                                  Text(
                                    "Hai Budi Martami",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 25 - ukuran),
                                  ),
                                  const Text(
                                    "tetap jaga kesehatan ya",
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                          padding:
                              EdgeInsets.only(top: 50, left: screenWidth * 0.07),
                          child: Image.network(
                            "https://fastly.picsum.photos/id/669/200/200.jpg?hmac=lAa_bMRK0BRBCTEvl1acVqTfEDrXQc0yNwi683-13cE",
                            height: (screenHeight * 0.16) - ukuran,
                            width: screenWidth * 0.18,
                            fit: BoxFit.cover,
                          )),
                      Container(
                        padding: const EdgeInsets.only(top: 8),
                        child: GestureDetector(
                          onTap: () {
                            // ignore: avoid_print
                            print('Icon diklik!');
                          },
                          child: Icon(
                            Icons.shopping_cart,
                            size: 25 - ukuran,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      top: screenHeight * 0.025,
                      left: screenWidth * 0.14,
                      right: screenWidth * 0.14),
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      filled: true,
                      hintText: 'Cari Pemerikasaan Kesehatan',
                      hintStyle: TextStyle(fontSize: 14 - (ukuran / 2)),
                      prefixIcon: Icon(Icons.search, size: 28 - (ukuran / 2),),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      left: screenWidth * 0.05, top: screenHeight * 0.04),
                  child: Text(
                    "Layanan Prodiax",
                    textAlign: TextAlign.left,
                    style: TextStyle(fontSize: 22 - ukuran, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.03),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      pilihan(Icons.border_color, "Cari dan Pesan"),
                      pilihan(Icons.chat, "Chat dengan CS"),
                      pilihan(Icons.edit_document, "Hasil Pemerikasaan")
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.02),
                  child: GestureDetector(
                    onTap: () {
                      // ignore: avoid_print
                      print("gunakan kode");
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.yellow[50],
                          borderRadius: BorderRadius.circular(15)),
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.yellow[50],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey[50]),
                              child: Container(
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.grey[50],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: Colors.grey,
                                    width: 1,
                                  ),
                                ),
                                child: Icon(Icons.add_task,
                                    size: 20 - (ukuran / 2), color: Colors.orange),
                              ),
                            ),
                             Text(
                              "Gunakan Kode Rujukan Dokter",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 14 - (ukuran / 2)),
                            ),
                             Icon(Icons.arrow_right,
                                size: 40 - ukuran, color: Colors.orange)
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Column pilihan(IconData icon, String judul) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            // ignore: avoid_print
            print("klik pilihan");
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15)),
            child: Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              child: Icon(icon, size: 60 - (ukuran * 2), color: Colors.orange),
            ),
          ),
        ),
        Text(judul, style:  TextStyle(
          fontSize: 14 - (ukuran / 2)
        ),)
      ],
    );
  }
}

class BottomNavigasiBar extends StatefulWidget {
  final int inputan;
  const BottomNavigasiBar({super.key, required this.inputan});
  @override
  // ignore: library_private_types_in_public_api, no_logic_in_create_state
  _BottomNavigasiBarState createState() => _BottomNavigasiBarState();
}

class _BottomNavigasiBarState extends State<BottomNavigasiBar> {
  // ignore: non_constant_identifier_names
  var menu_icon = [
    Icons.book,
    Icons.my_location,
    Icons.call,
    Icons.account_circle
  ];

  // ignore: non_constant_identifier_names
  var menu_label = ["Pesanan Saya", "Lokasi", "Kontak kami", "Akun"];
  int selectedIndex = 0;
  @override
  void initState() {
    super.initState();
    selectedIndex = widget.inputan;
  }
  static late double screenWidth;
  static late double ukuran;

  @override
  Widget build(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 300) {
      ukuran = 10;
    }else if(screenWidth < 350){
      ukuran = 5;
    }else{
      ukuran = 0;
    }
    return BottomNavigationBar(
      backgroundColor: const Color.fromRGBO(233, 229, 238, 1.0),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.black,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
      currentIndex: selectedIndex,
      onTap: (index) {
        // navigasi halaman 

        if (index == 0) {
          const Home();
        } else if (index == 1) {
          // halaman ke 2
        } else if (index == 2) {
          // halaman ke 3
        }else if (index == 3) {
          // halaman ke 4
        }
          
      },
      items: menu_icon
          .asMap()
          .entries
          .map((e) => BottomNavigationBarItem(
                icon: Container(
                  padding: const EdgeInsets.only(top: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 5),
                        decoration: BoxDecoration(
                          color: selectedIndex == e.key
                              ? const Color.fromRGBO(
                                  255, 204, 0, 1.0) // Warna dari gambar
                              : null,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Icon(
                          e.value,
                          size: 30 - ukuran,
                        ),
                      ),
                      Text(
                        menu_label[e.key],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14 - (ukuran / 2)),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                label: '',
              ))
          .toList(),
    );
  }
}
