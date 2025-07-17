part of 'task_cubit.dart';

@immutable
sealed class TaskState {}

final class TaskInitial extends TaskState {
  
}
final class TaskUpdate extends TaskState {
  final List<Task> tasks;

  TaskUpdate(this.tasks);

  
}
