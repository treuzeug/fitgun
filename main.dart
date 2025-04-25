import 'package:flutter/material.dart';

void main() {
  runApp(FitGunApp());
}

class FitGunApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FitGun',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeScreen(),
      routes: {
        '/recipes': (context) => RecipeScreen(),
        '/details': (context) => DetailScreen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> motivasyonMesajlari = [
    "Bugün senin günün! Kendin için bir adım at.",
    "Bir adım bile bir adımdır. Devam et!",
    "Sağlıklı olmak bir seçimdir, sen bugün seçtin.",
  ];

  @override
  Widget build(BuildContext context) {
    final mesaj = (motivasyonMesajlari..shuffle()).first;

    return Scaffold(
      appBar: AppBar(
        title: Text('FitGun'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Günün Mesajı:",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              mesaj,
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/recipes');
              },
              child: Text("Evde Ne Var?"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // gelecek sürümde sağlık önerileri
              },
              child: Text("Bugünün Sağlık Önerisi"),
            ),
          ],
        ),
      ),
    );
  }
}

class RecipeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tarif Bul")),
      body: Center(
        child: Text("Burada tarif arama ekranı olacak"),
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tarif Detayı")),
      body: Center(
        child: Text("Burada tarif detayı olacak"),
      ),
    );
  }
}
