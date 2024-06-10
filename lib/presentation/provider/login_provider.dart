import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoesly/core/entity/app_state.dart';
import 'package:shoesly/core/entity/entity.dart';
import 'package:shoesly/presentation/models/response/login_response_model.dart';
import 'package:shoesly/presentation/provider/auth_provider.dart';
import 'package:shoesly/presentation/services/auth.dart';

final loginProvider =
    StateNotifierProvider<LoginProvider, AppState<LoginResponseModel>>(
  (ref) => LoginProvider(
      InitialState<LoginResponseModel>(), ref.watch(authRepositoryImpl)),
);

class LoginProvider extends StateNotifier<AppState<LoginResponseModel>> {
  final AuthService authService;
  final emailTEC = TextEditingController();
  final passwordTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();
  LoginProvider(super.state, this.authService);
  setState(AppState<LoginResponseModel> modelValue) {
    state = modelValue;
  }

  onSubmit(WidgetRef ref, BuildContext context) {
    //Validate
    if (formKey.currentState!.validate()) {
      login(ref, context: context);
    }
  }

  Future<void> login(WidgetRef ref,
      {required BuildContext context, bool fromInit = false}) async {
    await Future.delayed(Duration.zero);
    if (!formKey.currentState!.validate()) {
      return;
    }

    ///Shows loading effect only if from init
    if (!fromInit) {
      setState(LoadingState());
    }
    // Map body = {
    //   "email": emailTEC.text,
    //   "password": passwordTEC.text,
    // };
    // await _myRepo.login(body).then((value) async {
    //   showToast("Login successful");
    //   ref.read(databaseRepositoryProvider).saveToken(value.access);
    //   context.go(AppRoutes.homeRoute);
    //   setState(CompletedState(value));
    // }).onError((error, stackTrace) {
    //   log("Invalid credentials!");
    //   // log(stackTrace.toString());
    //   // showToast(error.toString());
    //   setState(ErrorState(error.toString()));
    // });
  }
}
