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
      mainAxisSize: MainAxisSize.min, 
      children: [
        Rate(
          iconSize: 14,
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
              Colors.yellow[300]!,
              Colors.yellow[400]!,
              Colors.yellow[500]!,
              Colors.yellow[700]!,
              Colors.yellow[900]!,
            ];

            Color starColor = colors[starIndex];
            if (starIndex + 1 <= _rating.floor()) {
              starColor = colors[starIndex];
            } else if (starIndex + 1 == _rating.ceil() && _rating % 1 != 0) {
              starColor = colors[starIndex];
            } else {
              starColor = Colors.grey;
            }

            return Icon(Icons.star, color: starColor, size: 14); 
          },
        ),
        SizedBox(width: 4), 
        Text(
          '(${_rating.toStringAsFixed(1)})',
          style: TextStyle(color: Colors.grey, fontSize: 12), 
        ),
      ],
    );
  }
}
