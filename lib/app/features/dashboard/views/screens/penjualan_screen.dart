import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management/app/constans/app_constants.dart';

import 'keuangan_screen.dart';

class PenjualanScreen extends StatelessWidget {
  const PenjualanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Laporan Penjualan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(
            height: kSpacing,
          ),
          FittedBox(
            child: Row(
              children: [
                CardTemplate(
                  titleContent: 'Penjualan H - 2 Bulan',
                  valueContent: '54.100.000',
                  info: 'Naik dari bulan kemarin',
                  uang: true,
                ),
                CardTemplate(
                  titleContent: 'Penjualan H - 1 Bulan',
                  valueContent: '24.500.000',
                  info: 'Turun dari bulan kemarin',
                  uang: true,
                ),
                CardTemplate(
                  titleContent: 'Penjualan berjalan',
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
        ],
      ),
    );
  }
}
