import 'package:flutter/material.dart';

class ScienceScreen extends StatelessWidget {
  const ScienceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
            'Science Screen',
          style: TextStyle(
            fontSize: 30.0,
            fontWeight:FontWeight.bold,
            
          ),
        ),

    );
  }
}
