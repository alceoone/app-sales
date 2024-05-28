import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'menu_header_widget.dart';

class BerandaPage extends StatefulWidget {
  const BerandaPage({super.key});

  @override
  State<BerandaPage> createState() => _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            elevation: 10,
            title: const Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hai, (Nama Staf)",
                  style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "Staff Penjualan",
                  style: TextStyle(fontSize: 12.0, color: Colors.deepOrange),
                ),
                // Text(
                //   "${grubBy}",
                //   style: const TextStyle(
                //       fontSize: 12.0, color: Colors.deepOrange),
                // ),
              ],
            ),
            actions: [
              IconButton(
                icon: const Icon(
                  FontAwesomeIcons.barcode,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const FiturUpdatePage(),
                  //   ),
                  // );
                },
                iconSize: 22.0,
              ),
              IconButton(
                icon: const Icon(
                  FontAwesomeIcons.bell,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //     builder: (context) => const NotifikasiPage(),
                  //   ),
                  // );
                },
                iconSize: 22.0,
              ),
            ],
          ),
          const SliverFillRemaining(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  MenuHeaderWidget(),
                  SizedBox(
                    height: 5.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
