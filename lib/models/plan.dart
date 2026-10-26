import 'package:pml/models/task.dart';

class Plan {
  final String name;
  final List<Task> tasks;

  const Plan({this.name = '', this.tasks = const []});

  int get completedCount => tasks.where((task) => task.completed).length;

  String get completenessMessage =>
      '$completedCount out of ${tasks.length} tasks';

  @override
  String toString() {
    // TODO: implement toString
    return '${this.name}: ${tasks.toString()}';
  }
}
