class Task {
  final String Name;
  bool isDone;

  Task({required this.Name, this.isDone = false});

  void toggleDone() {
    isDone = !isDone;
  }
}
