import 'package:flutter/material.dart';

class AppDrop<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>>? items;
  final String label;
  final void Function(T?)? onChanged;
  const AppDrop({
    Key? key,
    required this.items,
    required this.onChanged,
    this.label = "",
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[400]!),
        color: Colors.white,
      ),
      child: DropdownButton<T>(
        items: items,
        hint: Text(label),
        underline: const SizedBox(),
        isExpanded: true,
        onChanged: onChanged,
      ),
    );
  }
}
