import 'dart:io';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoesly/presentation/screens/no_internet_screen.dart';
import '../../core/values/routes_config.dart';

final connectivityController =
    ChangeNotifierProvider<ConnectivityProvider>((ref) {
  return ConnectivityProvider();
});

class ConnectivityProvider extends ChangeNotifier {
  final Connectivity _connectivity = Connectivity();

  var count = 0;
  var isOnline = true;

  void resetCounter() {
    count = 0;
  }

  Future<void> checkIsOnline() async {
    try {
      final response = await InternetAddress.lookup('www.google.com');
      if (response.isNotEmpty) {
        isOnline = true;
      } else {
        isOnline = false;
      }
    } on SocketException {
      isOnline = false;
    }
  }

  ConnectivityProvider() {
    checkIsOnline();
  }

  Future monitorConnection() async {
    _connectivity.onConnectivityChanged.listen((event) async {
      if (event.contains(ConnectivityResult.mobile) ||
          event.contains(ConnectivityResult.wifi) ||
          event.contains(ConnectivityResult.bluetooth)) {
        await checkIsOnline();
        if (isOnline) {
          final context = navKey.currentState?.context;
          if (context != null && context.mounted) {
            if (count == 1) {
              Navigator.pop(context);
            } else if (count > 1) {
              Navigator.popUntil(context, (_) => (count-- <= 0));
            }
          }
          resetCounter();
        }
      } else {
        isOnline = false;
        count++;
        await navKey.currentState?.push(
          MaterialPageRoute(
            builder: (context) => const NoInternetScreen(),
          ),
        );
      }
    });

    await checkIsOnline();
    if (!isOnline) {
      count++;
      await navKey.currentState?.push(
        MaterialPageRoute(
          builder: (context) => const NoInternetScreen(),
        ),
      );
    }
  }
}
