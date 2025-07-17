import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task22/models/task.dart';
part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());
  void updateTasks(List<Task> tasks) {
    emit(TaskUpdate(tasks));
  }
  void addTask(Task task) {
    if (state is TaskUpdate) {
      final currentState = state as TaskUpdate;
      final updatedTasks = List<Task>.from(currentState.tasks)..add(task);
      emit(TaskUpdate(updatedTasks));
    } else {
      emit(TaskUpdate([task]));
    }
  }
  void removeTask(String taskId) {
    if (state is TaskUpdate) {
      final currentState = state as TaskUpdate;
      final updatedTasks = currentState.tasks.where((task) => task.id != taskId).toList();
      emit(TaskUpdate(updatedTasks));
    }
  }
  void toggleTaskCompletion(String taskId) {
    if (state is TaskUpdate) {
      final currentState = state as TaskUpdate;
      final updatedTasks = currentState.tasks.map((task) {
        if (task.id == taskId) {
          return Task(
            id: task.id,
            title: task.title,
            dueDate: task.dueDate,
            isCompleted: !task.isCompleted,
          );
        }
        return task;
      }).toList();
      emit(TaskUpdate(updatedTasks));
    }
  }
}
