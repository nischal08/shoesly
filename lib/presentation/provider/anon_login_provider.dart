import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoesly/core/entity/app_state.dart';
import 'package:shoesly/core/entity/entity.dart';
import 'package:shoesly/core/utils/show_toast.dart';
import 'package:shoesly/presentation/provider/auth_provider.dart';
import 'package:shoesly/presentation/services/auth.dart';

final anonLoginProvider =
    StateNotifierProvider<AnonLoginProvider, AppState<User>>(
  (ref) =>
      AnonLoginProvider(InitialState<User>(), ref.watch(authRepositoryImpl)),
);

class AnonLoginProvider extends StateNotifier<AppState<User>> {
  final AuthServiceImpl authService;
  AnonLoginProvider(super.state, this.authService);
  setState(AppState<User> modelValue) {
    state = modelValue;
  }

  Future<void> anonLogin(WidgetRef ref, {required BuildContext context}) async {
    await Future.delayed(Duration.zero);
    setState(LoadingState());
    await authService.singinAnon().then((value) async {
      showToast("Login successful");
      if (value == null) {
        setState(ErrorState("Null value error form anon"));
      } else {
        setState(CompletedState(value));
      }
    }).onError((error, stackTrace) {
      log(error.toString());
      setState(ErrorState(error.toString()));
    });
  }
}
