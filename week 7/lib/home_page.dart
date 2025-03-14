import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

int count = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 8,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_circle_left_outlined,
                      size: 32,
                    )),
                Text(
                  'Details',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 32,
                    )),
              ],
            ),
            Center(
                child: Image.asset(
              'assets/images/chair.png',
              height: 300,
              width: 280,
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Chair',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                      color: const Color.fromARGB(255, 115, 108, 108)),
                ),
                Text(
                  r'$212  ',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                )
              ],
            ),
            Text(
              'Minimalist Style with Pillow',
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
            Text(
                'A modern, comfortable chair designed to provide both style and functionality. Perfect for your home, office, or any space, it offers excellent support for long hours of sitting. Made with high-quality, durable materials and a sleek, ergonomic design to match any interior decor while ensuring comfort and practicality.'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  spacing: 3,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(50)),
                    ),
                  ],
                ),
                Container(
                  height: 55,
                  width: 160,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          icon: Icon(Icons.add)),
                      Text(
                        '$count',
                        style: TextStyle(fontSize: 24),
                      ),
                      IconButton(
                          onPressed: () {
                            setState(() {
                              count--;
                            });
                          },
                          icon: Icon(Icons.remove)),
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              
              Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
              
                  ),
                  child: IconButton(onPressed: (){}, icon:Icon( Icons.favorite_border_outlined),color: Colors.red,iconSize: 36,)
                  ,
              ),
               Container(
                  height: 55,
                  width: 270,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(12),
              
                  ),
             child: Center(child: Text('Add to Cart',style: TextStyle(color:Colors.white),)))
           ] )
          ],
        ),
      ),
    );
  }
}
