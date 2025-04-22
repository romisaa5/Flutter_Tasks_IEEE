import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do/widgets/custom_scaffold_bg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    String day = DateFormat('dd').format(now);
    String month = DateFormat('MMM').format(now).toUpperCase();
    String year = DateFormat('yyyy').format(now);
    String weekday = DateFormat('EEEE').format(now).toUpperCase();

     void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      ),
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          child: Column(
            children: [
              
              SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  
                ),
                onPressed: () => Navigator.pop(context),
                child: Text('Add Task'),
              ),
            ],
          ),
        );
      },
    );
  }

    return CustomScaffoldBg(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.list, color: Colors.white, size: 24),
        title: Text(
          'Tasker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(  
        backgroundColor: Colors.blue,
          onPressed: () => _showBottomSheet(context),
        child: Icon(Icons.add, color: Colors.white,),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    spacing: 4,
                    children: [
                      Text(
                        day,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            month,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            year,
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    weekday,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
