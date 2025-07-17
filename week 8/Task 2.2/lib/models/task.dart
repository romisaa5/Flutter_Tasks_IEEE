class Task {
  final String id;
  final String title;
  final DateTime dueDate;
  final bool isCompleted;

  Task({
    required this.id,
    required this.title,

    required this.dueDate,
    this.isCompleted = false,
  });

  @override
  String toString() {
    return 'Task{id: $id, title: $title, , dueDate: $dueDate, isCompleted: $isCompleted}';
  }
}
