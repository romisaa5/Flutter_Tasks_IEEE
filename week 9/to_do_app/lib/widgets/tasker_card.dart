import 'package:flutter/material.dart';
import 'package:todo/widgets/custom_check_is_done.dart';

class TaskerCard extends StatelessWidget {
  const TaskerCard({
    super.key,
    required this.title,
    this.onPressed,
    required this.date,
  });
  final String title;
  final DateTime date;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          leading: CustomCheckIsDone(),
          title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text(date.toLocal().toString().split(' ')[0]),
          trailing: IconButton(icon: Icon(Icons.delete), onPressed: onPressed),
        ),
      ),
    );
  }
}
