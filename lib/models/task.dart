class Task {
  final String description;
  final bool completed;

  const Task({this.completed = false, this.description = ''});

  @override
  String toString() {
    // TODO: implement toString
    return this.description;
  }
}
