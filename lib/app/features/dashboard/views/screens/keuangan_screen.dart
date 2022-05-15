// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management/app/constans/app_constants.dart';

class KeuanganScreen extends StatelessWidget {
  const KeuanganScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Laporan Keuangan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(
            height: kSpacing,
          ),
          FittedBox(
            child: Row(
              children: [
                CardTemplate(
                  titleContent: 'Pemasukan H - 2 Bulan',
                  valueContent: '54.100.000',
                  info: 'Naik dari bulan kemarin',
                  uang: true,
                ),
                CardTemplate(
                  titleContent: 'Pemasukan H - 1 Bulan',
                  valueContent: '24.500.000',
                  info: 'Turun dari bulan kemarin',
                  uang: true,
                ),
                CardTemplate(
                  titleContent: 'Bulan berjalan',
                  valueContent: '12.200.000',
                  info: 'Sedang berjalan',
                  uang: true,
                ),
              ],
            ),
          ),
          SizedBox(
            height: kSpacing,
          ),
          FittedBox(
            child: Row(
              children: [
                CardTemplate(
                  titleContent: 'Pengeluaran H - 2 Bulan',
                  valueContent: '4.100.000',
                  info: 'Naik dari bulan kemarin',
                  uang: true,
                ),
                CardTemplate(
                  titleContent: 'Pengeluaran H - 1 Bulan',
                  valueContent: '50.000.000',
                  info: 'Turun dari bulan kemarin',
                  uang: true,
                ),
                CardTemplate(
                  titleContent: 'Pengeluaran berjalan',
                  valueContent: '200.000',
                  info: 'Sedang berjalan',
                  uang: true,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CardTemplate extends StatelessWidget {
  CardTemplate(
      {Key? key,
      required this.titleContent,
      required this.valueContent,
      this.uang = false,
      this.info = ''})
      : super(key: key);

  String titleContent;
  String valueContent;
  String info;
  bool uang;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kBorderRadius),
        ),
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: kSpacing, vertical: kSpacing),
              child: Column(
                children: [
                  Text(titleContent,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Text(
                        uang ? "Rp.$valueContent" : "$valueContent",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      // Text(
                      //   " Ekor",
                      //   style: TextStyle(
                      //       fontSize: 14, fontWeight: FontWeight.bold),
                      // ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(Get.context!).primaryColorLight,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: Text("Details")),
                    Text(info,
                        style: TextStyle(
                            overflow: TextOverflow.clip,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
