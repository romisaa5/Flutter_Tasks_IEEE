import 'package:flutter/material.dart';

class CustomTShirtSizes extends StatefulWidget {
  const CustomTShirtSizes({super.key});

  @override
  State<CustomTShirtSizes> createState() => _CustomTShirtSizesState();
}

class _CustomTShirtSizesState extends State<CustomTShirtSizes> {
  List<String> sizes = ["S", "M", "L", "XL", "2XL"]; 
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 15,
      children: 
        List.generate(sizes.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index; 
                });
              },
              child: Container(
                width: 50,
                height: 50,
                margin: EdgeInsets.symmetric(vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: selectedIndex == index ? Colors.red : const Color.fromARGB(95, 69, 66, 66),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  sizes[index], 
                  style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'font1'),
                ),
              ),
            );
          }),
        
      
    );
  }
}
