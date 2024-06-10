import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoesly/core/styles/text_styles.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: Text(
          "Home Screen",
          style: generalTextStyle(22).copyWith(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
