// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:project_management/app/constans/app_constants.dart';
import 'package:project_management/app/shared_components/task_card.dart';

import '../../../../utils/helpers/app_helpers.dart';

class DataPeternakan extends StatelessWidget {
  const DataPeternakan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Data Peternakan"),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              TaskCardPeternakan(
                  data: TaskCardData(
                    title: "Total Ternak Saat ini",
                    dueDay: 23,
                    totalComments: 50,
                    type: TaskType.todo,
                    totalContributors: 30,
                    profilContributors: [
                      AssetImage(ImageRasterPath.avatar1),
                      AssetImage(ImageRasterPath.avatar2),
                      AssetImage(ImageRasterPath.avatar3),
                      AssetImage(ImageRasterPath.avatar4),
                    ],
                  ),
                  onPressedMore: () {},
                  onPressedTask: () {},
                  onPressedContributors: () {},
                  onPressedComments: () {}),
              TaskCardPeternakan(
                  data: TaskCardData(
                    title: "Total Pakan",
                    dueDay: 100,
                    totalComments: 50,
                    type: TaskType.todo,
                    totalContributors: 30,
                    profilContributors: [
                      AssetImage(ImageRasterPath.avatar1),
                      AssetImage(ImageRasterPath.avatar2),
                      AssetImage(ImageRasterPath.avatar3),
                      AssetImage(ImageRasterPath.avatar4),
                    ],
                  ),
                  onPressedMore: () {},
                  onPressedTask: () {},
                  onPressedContributors: () {},
                  onPressedComments: () {}),
            ],
          )
        ],
      ),
    );
  }
}
