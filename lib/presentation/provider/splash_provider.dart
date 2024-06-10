import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashProvider = ChangeNotifierProvider<SplashProvider>((ref) {
  return SplashProvider(ref);
});

class SplashProvider with ChangeNotifier {
  final ChangeNotifierProviderRef<SplashProvider> ref;
  SplashProvider(this.ref);


}
