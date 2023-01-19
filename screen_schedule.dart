class ScheduleScreen extends StatelessWidget {
  final List<Task> tasks;

  ScheduleScreen({this.tasks});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Schedule"),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tasks[index].taskName),
            subtitle: Text("${tasks[index].startTime} - ${tasks[index].endTime}"),
          );
        },
      ),
    );
  }
}
