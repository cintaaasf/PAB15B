import 'package:flutter/material.dart';
import 'package:flutter_bottom_navigation/models/candi.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // -------------- Header ------------
            children: [
              //Gambar Utama
              Padding(padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  candi.imageAsset,
                  fit: BoxFit.cover,
                  width: double.infinity,
                  height: 200,
                )
                )),
                // tombol back
                Container(
                  margin: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle
                  ),
                  child: IconButton(onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back)),
                )

            ],),
        )),
    );
  }
}
