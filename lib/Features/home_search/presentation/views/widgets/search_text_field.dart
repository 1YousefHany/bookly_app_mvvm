import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: customInputDecoration(),
      
    );
  }

  InputDecoration customInputDecoration() {
    return InputDecoration(
        hintText: 'Search',
        suffixIcon: const Opacity(
          opacity: .8,
          child:  Icon(Icons.search_rounded, size: 30),
          ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
      );
  }
}