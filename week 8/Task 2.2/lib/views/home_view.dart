import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:task22/manager/cubit/task_cubit.dart';
import 'package:task22/models/task.dart';
import 'package:task22/theme/app_colors.dart';
import 'package:task22/theme/text_styles.dart';
import 'package:task22/widgets/custom_text_form_field.dart';
import 'package:task22/widgets/task_card.dart';
import 'package:uuid/uuid.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final String todayDate = DateFormat('hh:mm a').format(DateTime.now());
    final String date = DateFormat('d E').format(DateTime.now());
    TextEditingController controller = TextEditingController();

    return BlocProvider(
      create: (context) => TaskCubit(),
      child: Scaffold(
        backgroundColor: AppColors.bgcolor,
        floatingActionButton: FloatingActionButton(
          shape: CircleBorder(),
          backgroundColor: AppColors.navyBlue,
          hoverColor: Colors.blue.withValues(alpha: .18),
          onPressed: () {},
          child: Icon(Icons.add, color: Colors.white),
        ),
        body: BlocBuilder<TaskCubit, TaskState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                spacing: 20,
                children: [
                  SizedBox(height: 30),
                  Row(
                    spacing: 5,
                    children: [
                      Text('To do List ✅', style: TextStyles.textstyle32),
                      Spacer(),
                      Text(date, style: TextStyles.textstyle18),
                      Icon(Icons.calendar_month_outlined),
                    ],
                  ),
                  AppTextFormField(
                    controller: controller,
                    hintText: 'Add a task',

                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter a task';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      value = controller.text;
                    },

                    backgroundColor: AppColors.bgcolor,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 14,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if (controller.text.isNotEmpty) {
                        final task = Task(
                          id: Uuid().v4(),
                          title: controller.text,
                          dueDate: DateTime.now(),
                          isCompleted: false,
                        );
                        context.read<TaskCubit>().addTask(task);
                        controller.clear();
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.navyBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                      ),
                    ),
                    child: Text(
                      'Add',
                      style: TextStyles.textstyle16.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),

                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: state is TaskUpdate ? state.tasks.length : 0,
                    itemBuilder: (context, index) {
                      return TaskCard(
                        onChanged: (newValue) {
                          context.read<TaskCubit>().toggleTaskCompletion(
                            state is TaskUpdate ? state.tasks[index].id : '',
                          );
                        },
                        isChecked:
                            state is TaskUpdate
                                ? state.tasks[index].isCompleted
                                : false,
                        onPressed: () {
                          context.read<TaskCubit>().removeTask(
                            state is TaskUpdate ? state.tasks[index].id : '',
                          );
                          Navigator.pop(context);
                        },
                        title:
                            state is TaskUpdate ? state.tasks[index].title : '',
                        subtitle: todayDate,
                      );
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
