// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management/app/constans/app_constants.dart';
import 'package:project_management/app/features/dashboard/views/screens/dashboard_screen.dart';
import 'package:project_management/app/shared_components/task_card.dart';

import '../../../../utils/helpers/app_helpers.dart';

class DataPeternakan extends StatelessWidget {
  const DataPeternakan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DashboardController dashboardController = Get.find();
    return Padding(
      padding: EdgeInsets.all(kSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          _OverviewHeader(
            dashboardController: dashboardController,
            onSelected: (task) {},
          ),
          SizedBox(
            height: 20,
          ),
          Obx(() => SizedBox(
                      height: double.maxFinite,
                      child: ListView.builder(
                          scrollDirection: Axis.vertical,
                          itemCount: dashboardController.menuDataPeternakan.value,
                          itemBuilder: ((context, index) {
                            return FittedBox(
                              child: Row(
                                children: [
                                  SizedBox(
                                    height: 100,
                                    width: 300,
                                    child: Card(
                                        child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      // ignore: prefer_const_literals_to_create_immutables
                                      children: [
                                        Text("Sapi Brahman"),
                                      ],
                                    )),
                                  ),
                                  SizedBox(
                                    height: 100,
                                    width: 300,
                                    child: Card(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Sapi Bali")],
                          )),
                        ),
                        SizedBox(
                          height: 100,
                          width: 300,
                          child: Card(
                              child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Sapi Belanda")],
                          )),
                        ),
                      ],
                    ),
                  );
                })),
          )),
          // TaskDataPeternakan()
        ],
      ),
    );
  }
}

class _OverviewHeader extends StatelessWidget {
   _OverviewHeader({
    required this.onSelected,
    required this.dashboardController,
    Key? key,
  }) : super(key: key);

  final Function(TaskType? task) onSelected;
  DashboardController dashboardController;

  @override
  Widget build(BuildContext context) {
    final Rx<TaskType?> task = Rx(null);

    return Obx(
      () => Row(
        children: [
          const Text(
            "Data Peternakan",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          _button(
            selected: task.value == null,
            label: "Semua",
            onPressed: () {
              dashboardController.menuDataPeternakan.value = 0;
              task.value = null;
              onSelected(null);
            },
          ),
          _button(
            selected: task.value == TaskType.todo,
            label: "Booking",
            onPressed: () {
              dashboardController.menuDataPeternakan.value = 1;
              task.value = TaskType.todo;
              onSelected(TaskType.todo);
            },
          ),
          _button(
            selected: task.value == TaskType.inProgress,
            label: "Disiapkan",
            onPressed: () {
              dashboardController.menuDataPeternakan.value = 2;
              task.value = TaskType.inProgress;
              onSelected(TaskType.inProgress);
            },
          ),
          _button(
            selected: task.value == TaskType.done,
            label: "Dikirim",
            onPressed: () {
              dashboardController.menuDataPeternakan.value = 3;
              task.value = TaskType.done;
              onSelected(TaskType.done);
            },
          ),
        ],
      ),
    );
  }

  Widget _button({
    required bool selected,
    required String label,
    required Function() onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          label,
        ),
        style: ElevatedButton.styleFrom(
          primary: selected
              ? Colors.lightBlue
              // ? Theme.of(Get.context!).cardColor
              : Theme.of(Get.context!).canvasColor,
          onPrimary: selected ? kFontColorPallets[0] : kFontColorPallets[2],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

class TaskDataPeternakan extends StatelessWidget {
  const TaskDataPeternakan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
