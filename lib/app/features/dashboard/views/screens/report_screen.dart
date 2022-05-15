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
          Text("Laporan Peternakan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          SizedBox(
            height: kSpacing,
          ),
          SizedBox(
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
                        Text("Total Penjualan Ternak",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        SizedBox(
                          height: kSpacing,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "219",
                              style: TextStyle(
                                  fontSize: 35, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              " Ekor",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Theme.of(Get.context!).primaryColorLight,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          onPressed: () {},
                          child: Text("Details")),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
