import 'package:flutter/material.dart';

class UserIconWidget extends StatelessWidget {
  const UserIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey.withOpacity(0.2),
      ),
      child: const Padding(
        padding: EdgeInsets.all(10.0),
        child: Icon(
          Icons.person,
          color: Colors.grey,
          size: 20.0,
        ),
      ),
    );
  }
}
