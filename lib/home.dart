import 'package:flutter/material.dart';

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
