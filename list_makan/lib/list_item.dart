import 'package:flutter/material.dart';
import 'package:list_makan/detail_page.dart';

class ListItem extends StatelessWidget {
  final String nama;
  final String detail;
  final String deskripsi;
  final String gambar;
  final String waktubuka;
  final String harga;
  final String kalori;
  final List<String> gambarlain;
  final List<Map<String, String>> bahan;

  const ListItem(
      {super.key,
      required this.nama,
      required this.harga,
      required this.gambarlain,
      required this.detail,
      required this.kalori,
      required this.bahan,
      required this.waktubuka,
      required this.deskripsi,
      required this.gambar});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                gambar,
                height: 75,
                width: 75,
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nama,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    deskripsi,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailPage(
                            nama: nama,
                            gambar: gambar,
                            kalori: kalori,
                            deskripsi: deskripsi,
                            waktubuka: waktubuka,
                            detail: detail,
                            harga: harga,
                            gambarlain: gambarlain,
                            bahan: bahan,
                          )));
            },
          ),
        ],
      ),
    );
  }
}
