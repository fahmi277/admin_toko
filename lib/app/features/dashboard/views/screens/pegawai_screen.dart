import 'package:flutter/material.dart';
import 'package:project_management/app/constans/app_constants.dart';

import 'keuangan_screen.dart';

class PegawaiScreen extends StatelessWidget {
  const PegawaiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Laporan Pegawai",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(
            height: kSpacing,
          ),
          FittedBox(
            child: Row(
              children: [
                CardTemplate(
                  titleContent: 'Junaedi Ahmad',
                  valueContent: 'Masuk',
                  info: 'Spesialis Babat Rumput',
                ),
                CardTemplate(
                  titleContent: 'Dul Jalal',
                  valueContent: 'Cuti',
                  info: 'Spesialis Aduk Pakan',
                ),
                CardTemplate(
                  titleContent: 'George',
                  valueContent: 'Sakit',
                  info: 'Anak Magang',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
