import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:super_app_karyawan/pages/main/qr-code/qr_code_page.dart';

import 'beranda/beranda_page.dart';

class MainPage extends StatefulWidget {
  final int initialIndex; // Tambahkan parameter initialIndex

  const MainPage({Key? key, required this.initialIndex}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    Widget customBottomNav() {
      return BottomNavigationBar(
          unselectedItemColor: Colors.black,
          // selectedItemColor: Colors.redAccent,
          selectedItemColor: Colors.green,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          currentIndex: currentIndex,
          onTap: (value) {
            // print(value);
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.home,
                size: 20,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.qrcode,
                size: 20,
              ),
              label: 'Qr Code',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.user,
                size: 20,
              ),
              label: 'Akun',
            ),
          ]);
    }

    Widget bodyData() {
      switch (currentIndex) {
        case 0:
          return const BerandaPage();
          break;
        case 1:
          return const QrCode();
          break;
        case 2:
          return const BerandaPage();
          break;
        default:
          return const BerandaPage();
      }
    }

    return Scaffold(
      backgroundColor: Color(0xffFEF4EB),
      bottomNavigationBar: customBottomNav(),
      // body: SafeArea(
      //   child: RefreshIndicator(
      //     onRefresh: _refresh,
      //     child: Builder(builder: (context) {
      //       return bodyData();
      //     }),
      //     displacement: 20.0,
      //     color: Colors.blue,
      //     backgroundColor: Colors.white,
      //     strokeWidth: 3.0,
      //     semanticsLabel: 'Pull to refresh',
      //     semanticsValue: 'Refresh',
      //   ),
      // ),
      body: bodyData(),
    );
  }
}
