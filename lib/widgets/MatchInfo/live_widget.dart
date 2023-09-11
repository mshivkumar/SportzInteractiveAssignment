import 'package:flutter/material.dart';

class LiveWidget extends StatelessWidget {
  const LiveWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          'Live',
          style: TextStyle(fontSize: 15),
        ),
        Image.asset(
          'asset/images/live.gif',
          height: 20,
        ),
      ],
    );
  }
}
