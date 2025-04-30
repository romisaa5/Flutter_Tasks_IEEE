import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            Center(child: Text('Gallery.',style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700, fontSize: 58),)),
            Center(child: Text('Images',style: TextStyle(color: Color(0xff121212),fontWeight: FontWeight.w700, fontSize: 20),)),
            SizedBox(height: 10,),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 7,
                crossAxisSpacing: 7,
                childAspectRatio: 0.8,
              ),
              itemCount: 20,
              shrinkWrap: true, 
              physics: const NeverScrollableScrollPhysics(),
        
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/img${(index % 6) + 1}.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
