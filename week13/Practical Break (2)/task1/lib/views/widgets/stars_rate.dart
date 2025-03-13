import 'package:flutter/material.dart';
import 'package:rate/rate.dart';

class StarsRate extends StatefulWidget {
  const StarsRate({super.key});

  @override
  State<StarsRate> createState() => _StarsRateState();
}

class _StarsRateState extends State<StarsRate> {
   double _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
         Rate(
          iconSize: 30,
          color: Colors.transparent,
          allowHalf: true,
          allowClear: true,
          initialValue: _rating,
          readOnly: false,
          onChange: (value) {
            setState(() {
              _rating = value;
            });
          },
          iconBuilder: (index, color) {
            int starIndex = index.toInt();
            List<Color> colors = [
              Colors.red[300]!,
              Colors.red[400]!,
              Colors.red[500]!,
              Colors.red[700]!,
              Colors.red[900]!,
            ];

            Color starColor = colors[starIndex];
            if (starIndex + 1 <= _rating.floor()) {
              starColor = colors[starIndex];
            } else if (starIndex + 1 == _rating.ceil() && _rating % 1 != 0) {
              starColor = colors[starIndex];
            } else {
              starColor = Colors.grey;
            }

            return Icon(Icons.star, color: starColor);
          },
        ),
        SizedBox(width: 10),
        Text(
          '(${_rating.toStringAsFixed(1)})',
          style: TextStyle(color: Colors.grey, fontSize: 18),
        ),
      ],
    );
  }
}