import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo/utils/sqflite_db.dart';
import 'package:todo/widgets/show_snack_bar.dart';

Future<void> showAddTaskBottomSheet(BuildContext context, SqfliteDb db) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      TextEditingController taskController = TextEditingController();
      DateTime? selectedDate;
      return StatefulBuilder(
        builder: (context, setState) {
          return Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
              top: 20,
              left: 20,
              right: 20,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  controller: taskController,
                  decoration: const InputDecoration(labelText: 'Task'),
                ),
                const SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    selectedDate == null
                        ? 'No due date'
                        : 'Due: ${DateFormat('yyyy-MM-dd').format(selectedDate!)}',
                    style: const TextStyle(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.calendar_month),
                      onPressed: () async {
                        final DateTime? picked = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2100),
                        );
                        if (picked != null) {
                          setState(() {
                            selectedDate = picked;
                          });
                        }
                      },
                    ),

                    Row(
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text(
                            'Cancel',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        TextButton(
                          onPressed: () async {
                            int response = await db.insertData(
                              "INSERT INTO notes (note, date) VALUES ('${taskController.text}', '${selectedDate != null ? DateFormat('yyyy-MM-dd').format(selectedDate!) : ''}')",
                            );
                            if (response > 0) {
                              if (!context.mounted) return;
                              showSuccessSnackBar(
                                context,
                                'Task added successfully!',
                              );
                              Navigator.of(context).pop();
                            } else {
                              if (!context.mounted) return;
                              showErrorSnackBar(context, 'Failed to add task.');
                            }
                          },
                          child: const Text(
                            'Save',
                            style: TextStyle(color: Colors.blue),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
              ],
            ),
          );
        },
      );
    },
  );
}
