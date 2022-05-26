import 'package:flutter/material.dart';

void nextScreen({required BuildContext context, required page}) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => page,
    ),
  );
}
