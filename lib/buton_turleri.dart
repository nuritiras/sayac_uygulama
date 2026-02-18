import 'package:flutter/material.dart';

class ButonTurleri extends StatelessWidget {
  const ButonTurleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Buton Türleri")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ElevatedButton(onPressed: () {}, child: Text("Giriş Yap")),
            OutlinedButton(onPressed: () {}, child: Text("Kayıt Ol")),
            TextButton(onPressed: () {}, child: Text("Şifremi Unuttum")),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text("Parıltılı Tıklama"),
            ),
          ],
        ),
      ),
    );
  }
}
