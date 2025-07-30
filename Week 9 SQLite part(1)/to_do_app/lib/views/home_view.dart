import 'package:flutter/material.dart';
import 'package:todo/utils/sqflite_db.dart';
import 'package:todo/widgets/show_add_task_bottom_sheet.dart';
import 'package:todo/widgets/tasker_card.dart';
import 'package:todo/widgets/tasker_header.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  SqfliteDb sqfliteDb = SqfliteDb();
  late Future<List<Map>> tasksFuture;
  @override
  void initState() {
    super.initState();
    tasksFuture = readData();
  }

  Future<List<Map>> readData() async {
    List<Map> response = await sqfliteDb.readData("SELECT * FROM notes");
    return response;
  }

  void refreshTasks() {
    setState(() {
      tasksFuture = readData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: CircleBorder(),
        backgroundColor: Colors.blue,
        onPressed: () async {
          await showAddTaskBottomSheet(context, sqfliteDb);
          refreshTasks();
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
      body: Column(
        children: [
          TaskerHeader(),
          FutureBuilder(
            future: tasksFuture,
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              } else if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Center(child: Text('No tasks available.')),
                );
              }
              return Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return TaskerCard(
                      onPressed: () async {
                        int response = await sqfliteDb.deleteData(
                          "DELETE FROM notes WHERE id = ${snapshot.data![index]['id']}",
                        );
                        if (response > 0) {
                          refreshTasks();
                        }
                      },
                      title: snapshot.data![index]['note'] as String,
                      date: DateTime.parse(snapshot.data![index]['date']),
                    );
                  },
                  itemCount: snapshot.data!.length,
                  physics: BouncingScrollPhysics(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
