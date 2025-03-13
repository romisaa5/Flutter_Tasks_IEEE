import 'package:flutter/material.dart';
import 'package:task1/constants.dart';
import 'package:task1/views/widgets/stars_rate.dart';

class RateSection extends StatefulWidget {
  const RateSection({super.key});

  @override
  State<RateSection> createState() => _RateSectionState();
}

class _RateSectionState extends State<RateSection> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        StarsRate(),
        Container(
          height: 40,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color.fromARGB(31, 228, 216, 216),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
        
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        if (count > 0) count--;
                      });
                    },
                    icon: Icon(Icons.remove, color: Colors.white, size: 18),
                    padding: EdgeInsets.zero, 
                  ),
                ),
              ),

              Text(
                '$count',
                style: TextStyle(
                  color: Kprimarycolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.red,
                ),
                child: Center(
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        count++;
                      });
                    },
                    icon: Icon(Icons.add, color: Colors.white, size: 18),
                    padding: EdgeInsets.zero, 
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
