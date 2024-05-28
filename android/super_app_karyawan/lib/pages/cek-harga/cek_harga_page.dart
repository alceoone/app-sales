import 'package:flutter/material.dart';

import '../main/main_page.dart';

class CekHargaPage extends StatefulWidget {
  const CekHargaPage({super.key});

  @override
  State<CekHargaPage> createState() => _CekHargaPageState();
}

class _CekHargaPageState extends State<CekHargaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cek Harga"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            const MainPage(
              initialIndex: 0,
            );
          },
        ),
      ),
      body: const Column(
        children: [],
      ),
    );
  }
}
