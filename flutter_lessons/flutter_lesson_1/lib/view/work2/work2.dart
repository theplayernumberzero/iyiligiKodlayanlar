import 'package:flutter/material.dart';

class Work2 extends StatefulWidget {
  const Work2({super.key});

  @override
  State<Work2> createState() => _Work2State();
}

class _Work2State extends State<Work2> {
  String aciklama = "Yeni Not";
  String baslik = "Notunuzu buraya yaziniz";

  TextEditingController _baslikController = TextEditingController();
  TextEditingController _aciklamaController = TextEditingController();

  void bilgileriGuncelle() {
    setState(() {
      aciklama = _aciklamaController.text;
      baslik = _baslikController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Work 2"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: _baslikController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your baslik",
              ),
            ),
            TextField(
              controller: _aciklamaController,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter your aciklama",
              ),
            ),
            ElevatedButton(
              onPressed: () {
                bilgileriGuncelle();
              },
              child: Text("Kaydet"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Girilen baslik: $baslik"),
                Text("Girilen aciklama: $aciklama"),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  baslik = "Yeni Not";
                  aciklama = "Notunuzu buraya yaziniz";
                });
              },
              child: Text("Temizle"),
            ),
          ],
        ),
      ),
    );
  }
}
