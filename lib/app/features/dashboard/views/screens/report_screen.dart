// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../constans/app_constants.dart';
import '../../../../shared_components/task_card.dart';

class ReportScreen extends GetView {
  ReportScreen({Key? key, required this.widget}) : super(key: key);

  Widget widget;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: kSpacing, left: kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // children: [widget],
        children: [
          Text("Laporan Peternakan"),
          SizedBox(
            height: 175,
            width: 300,
            child: Card(
              child: Padding(
                padding: EdgeInsets.all(kSpacing),
                child: Column(
                  children: [
                    Text("Total Penjualan Ternak",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Text(
                          "219",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " Ekor",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
