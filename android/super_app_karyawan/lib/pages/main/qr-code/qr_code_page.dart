import 'package:flutter/material.dart';
import 'package:qr_bar_code_scanner_dialog/qr_bar_code_scanner_dialog.dart';

class QrCode extends StatefulWidget {
  const QrCode({Key? key}) : super(key: key);

  @override
  State<QrCode> createState() => _QrCodeState();
}

class _QrCodeState extends State<QrCode> {
  final _qrBarCodeScannerDialogPlugin = QrBarCodeScannerDialog();
  String? code = "data";
  String? dataNull = "data";
  TextEditingController stokController = TextEditingController(text: "10");
  TextEditingController fisikController = TextEditingController();

  int stok = 10;

  List<Map<String, int>> dataList = [];

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              if (code != "data")
                Image.network(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1afWCagsgOOqiUHDz5Z7Oj8b_erRBiwmoosBNdLIYhA&s"),
              SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    code == dataNull;
                    _qrBarCodeScannerDialogPlugin.getScannedQrBarCode(
                        context: context,
                        onCode: (code) {
                          setState(() {
                            this.code = code;
                          });
                        });
                  },
                  child: Text("scan sekarang")),
              SizedBox(height: 20),
              if (code != "data")
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Stok Sekarang: $stok'), // Menampilkan data stok
                ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: fisikController,
                  keyboardType:
                      TextInputType.number, // Set keyboard type to number
                  decoration: InputDecoration(labelText: 'Fisik'),
                  onSubmitted: (value) {
                    // Trigger submit when Enter is pressed
                    _submitData();
                  },
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitData, // Call the submit method
                child: Text('Kirim'),
              ),
              SizedBox(height: 20),
              // Display the submitted data as a list
              Expanded(
                child: ListView.builder(
                  itemCount: dataList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(
                          'Code: ${dataList[index]['code']} - Stok: ${dataList[index]['stok']} - Fisik: ${dataList[index]['fisik']}'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitData() {
    setState(() {
      // Store submitted data
      dataList.add({
        'code': int.tryParse(code ?? '') ?? 0,
        'stok': int.tryParse(stokController.text) ?? 10,
        'fisik': int.tryParse(fisikController.text) ?? 0,
      });
      // Reset the input fields
      stokController.clear();
      fisikController.clear();
      code = "data";
      dataNull = "data";
      stok = 10;
    });
  }
}
