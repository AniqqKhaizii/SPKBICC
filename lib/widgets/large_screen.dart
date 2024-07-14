import 'package:flutter/material.dart';
import 'package:spkb_icc/helpers/local_navigator.dart';

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 6,
          child: localNavigator(),
        ),
      ],
    );
  }
}
