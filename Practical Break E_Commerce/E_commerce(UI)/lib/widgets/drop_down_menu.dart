import 'package:flutter/material.dart';

class DropDown extends StatefulWidget {
  final List<String> items;
  final String hinttext;
  final void Function(String? value) onChanged;
 const DropDown({required this.items, required this.hinttext, required this.onChanged});

  @override
  State<DropDown> createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      stepWidth: 138,
      child: IntrinsicHeight(
        child: DropdownButtonFormField<String>(
          dropdownColor: Colors.white,
          value: null,
          decoration: InputDecoration(
            hintText: widget.hinttext,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(12.0)),
            contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
          ),
          items: widget.items.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: widget.onChanged
        ),
      ),
    );
  }
}
