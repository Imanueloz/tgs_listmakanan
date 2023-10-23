import 'package:flutter/material.dart';
import 'package:list_makan/list_item.dart';
import 'package:list_makan/makanan.dart';
import 'package:list_makan/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: list_makanan.length,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListItem(
            nama: list_makanan[index].nama,
            gambar: list_makanan[index].gambar,
            deskripsi: list_makanan[index].deskripsi,
            detail: list_makanan[index].detail,
            waktubuka: list_makanan[index].waktubuka,
            harga: list_makanan[index].harga,
            gambarlain: list_makanan[index].gambarlain,
            bahan: list_makanan[index].bahan,
            kalori: list_makanan[index].kalori,
          );
        },
      ),
    );
  }
}
