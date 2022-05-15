part of dashboard;

class _OverviewHeader extends StatelessWidget {
  const _OverviewHeader({
    required this.onSelected,
    Key? key,
  }) : super(key: key);

  final Function(TaskType? task) onSelected;

  @override
  Widget build(BuildContext context) {
    final Rx<TaskType?> task = Rx(null);

    return Obx(
      () => Row(
        children: [
          const Text(
            "Dashboard Peternakan",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          _button(
            selected: task.value == null,
            label: "Semua",
            onPressed: () {
              task.value = null;
              onSelected(null);
            },
          ),
          _button(
            selected: task.value == TaskType.todo,
            label: "Ternak Terjual",
            onPressed: () {
              task.value = TaskType.todo;
              onSelected(TaskType.todo);
            },
          ),
          _button(
            selected: task.value == TaskType.inProgress,
            label: "Proses Kirim",
            onPressed: () {
              task.value = TaskType.inProgress;
              onSelected(TaskType.inProgress);
            },
          ),
          _button(
            selected: task.value == TaskType.onGoing,
            label: "Dikirim",
            onPressed: () {
              task.value = TaskType.onGoing;
              onSelected(TaskType.onGoing);
            },
          ),
          _button(
            selected: task.value == TaskType.done,
            label: "Terkirim",
            onPressed: () {
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
              // ? Theme.of(Get.context!).cardColor
              ? Colors.lightBlue
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
