class RemindersScreen extends StatelessWidget {
  final List<Reminder> reminders;

  RemindersScreen({this.reminders});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reminders"),
      ),
      body: ListView.builder(
        itemCount: reminders.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            value: reminders[index].isCompleted,
            onChanged: (bool value) {
              setState(() {
                reminders[index].isCompleted = value;
              });
            },
            title: Text(reminders[index].reminderMessage),
          );
        },
      ),
    );
  }
}
