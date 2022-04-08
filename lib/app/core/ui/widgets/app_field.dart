import 'package:flutter/material.dart';

class AppField extends StatefulWidget {
  final String? label;
  final TextEditingController? controller;

  const AppField({Key? key, this.label, this.controller}) : super(key: key);

  @override
  State<AppField> createState() => _AppFieldState();
}

class _AppFieldState extends State<AppField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: TextFormField(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        ),
        controller: widget.controller,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: const TextStyle(
            color: Colors.black54,
          ),
          hintStyle: const TextStyle(fontSize: 13),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(6.0)),
            borderSide: BorderSide(color: Colors.teal),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(7.0)),
            borderSide: BorderSide(color: Colors.black26),
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.close, size: 6),
            onPressed: () => widget.controller?.clear(),
          ),
          filled: true,
          fillColor: Colors.white,
        ),
      ),
    );
  }
}
