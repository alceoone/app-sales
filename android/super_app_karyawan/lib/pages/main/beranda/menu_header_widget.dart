import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:super_app_karyawan/pages/cek-harga/cek_harga_page.dart';
import 'package:super_app_karyawan/pages/main/main_page.dart';

class MenuHeaderWidget extends StatelessWidget {
  const MenuHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Container(
        height: 150.0,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 1, // Set flex to 1 for the second container (1/3)
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CekHargaPage(),
                        ),
                      );
                    },
                    child: const Column(
                      children: [
                        SizedBox(
                          width: 32.0,
                          height: 32.0,
                          child: Icon(
                            FontAwesomeIcons.squareCheck,
                            color: Colors.green,
                            size: 28.0,
                          ),
                        ),
                        Text(
                          "Cek Harga",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, // Set flex to 1 for the second container (1/3)
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const RewardPage(),
                      //   ),
                      // );
                    },
                    child: const Column(
                      children: [
                        SizedBox(
                          width: 32.0,
                          height: 32.0,
                          child: Icon(
                            FontAwesomeIcons.boxesStacked,
                            size: 28.0,
                          ),
                        ),
                        Text(
                          "Inventory",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, // Set flex to 1 for the second container (1/3)
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const PromoPage(),
                      //   ),
                      // );
                    },
                    child: const Column(
                      children: [
                        SizedBox(
                          width: 32.0,
                          height: 32.0,
                          child: Icon(
                            FontAwesomeIcons.tags,
                            size: 28.0,
                          ),
                        ),
                        Text(
                          "Promo Hari ini",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, // Set flex to 1 for the second container (1/3)
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const PromoPage(),
                      //   ),
                      // );
                    },
                    child: const Column(
                      children: [
                        SizedBox(
                          width: 32.0,
                          height: 32.0,
                          child: Icon(
                            FontAwesomeIcons.file,
                            size: 28.0,
                          ),
                        ),
                        Text(
                          "Komplain",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15.0,
            ),
            Row(
              children: [
                Expanded(
                  flex: 1, // Set flex to 1 for the second container (1/3)
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CekHargaPage(),
                        ),
                      );
                    },
                    child: const Column(
                      children: [
                        SizedBox(
                          width: 32.0,
                          height: 32.0,
                          child: Icon(
                            FontAwesomeIcons.squareCheck,
                            color: Colors.green,
                            size: 28.0,
                          ),
                        ),
                        Text(
                          "Laporan",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, // Set flex to 1 for the second container (1/3)
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const RewardPage(),
                      //   ),
                      // );
                    },
                    child: const Column(
                      children: [
                        SizedBox(
                          width: 32.0,
                          height: 32.0,
                          child: Icon(
                            FontAwesomeIcons.boxesStacked,
                            size: 28.0,
                          ),
                        ),
                        Text(
                          "Inventory",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, // Set flex to 1 for the second container (1/3)
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const PromoPage(),
                      //   ),
                      // );
                    },
                    child: const Column(
                      children: [
                        SizedBox(
                          width: 32.0,
                          height: 32.0,
                          child: Icon(
                            FontAwesomeIcons.tags,
                            size: 28.0,
                          ),
                        ),
                        Text(
                          "Promo Hari ini",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1, // Set flex to 1 for the second container (1/3)
                  child: GestureDetector(
                    onTap: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const PromoPage(),
                      //   ),
                      // );
                    },
                    child: const Column(
                      children: [
                        SizedBox(
                          width: 32.0,
                          height: 32.0,
                          child: Icon(
                            FontAwesomeIcons.file,
                            size: 28.0,
                          ),
                        ),
                        Text(
                          "Komplain",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
