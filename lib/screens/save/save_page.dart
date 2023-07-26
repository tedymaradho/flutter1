import 'package:flutter/material.dart';
import 'package:udemy/themes.dart';

class SavePage extends StatelessWidget {
  const SavePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Save Page',
          style: semiBoldText20,
        ),
      ),
    );
  }
}
