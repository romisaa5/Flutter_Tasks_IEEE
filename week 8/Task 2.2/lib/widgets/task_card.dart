import 'package:flutter/material.dart';
import 'package:task22/theme/app_colors.dart';
import 'package:task22/theme/text_styles.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.title, required this.subtitle});
  final String title;
  final String subtitle;
  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: ListTile(
        leading: Checkbox(
          fillColor: WidgetStateProperty.resolveWith<Color>((states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.green;
            }
            return Colors.white;
          }),

          value: isChecked,
          onChanged: (newValue) {
            setState(() {
              isChecked = newValue!;
            });
          },
        ),
        trailing: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder:
                  (BuildContext context) => AlertDialog(
                    title: Align(
                      alignment: Alignment.center,
                      child: Text("Delete ", style: TextStyles.textstyle18),
                    ),
                    content: Text(
                      "Are you sure you want to delete this task?",
                      style: TextStyles.textstyle16,
                    ),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: Text("Cancel", style: TextStyles.textstyle16),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text(
                          "Delete",
                          style: TextStyles.textstyle16.copyWith(
                            color: AppColors.redColor,
                          ),
                        ),
                      ),
                    ],
                  ),
            );
          },
          icon: Icon(Icons.delete_outline, color: AppColors.redColor, size: 24),
        ),
        title: Text(widget.title),
        subtitle: Text(widget.subtitle),
      ),
    );
  }
}
