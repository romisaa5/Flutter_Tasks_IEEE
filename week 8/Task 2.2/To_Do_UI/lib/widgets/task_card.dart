import 'package:flutter/material.dart';


class TaskCard extends StatelessWidget {
  const TaskCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey.shade300,
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      color: Colors.grey.shade100,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
          height: 100,
          child: Center(
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: Container(
                height: 65,
                width: 4,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                
              ),
              title: Text(
                'Task Title',
                style: TextStyle(
                  fontSize: 16,
                  color: const Color.fromARGB(255, 41, 38, 38)
                ),
              ),
              subtitle: Text(
                'Task Description',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey),
              ),
              trailing: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8),
                ),
                height: 35,
                width: 60,
                child: IconButton( 
                  onPressed: () {
                    showDeleteDialog(context);
                  },
                  icon: Icon( Icons.delete, color: Colors.white, size: 24),)
              ),
            ),
          ),
        ),
      ),
    );
  }
void showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        title: Text(
          'Delete Task',
          style: TextStyle(
            color: Colors.redAccent,
            fontWeight: FontWeight.w500,
          ),
        ),
        content: Text(
          'Are you sure you want to delete this task?',
          style: TextStyle(
            color: Colors.black54,
            fontSize: 16,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'OK',
              style: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}