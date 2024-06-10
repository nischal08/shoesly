import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoesly/core/styles/app_sizes.dart';
import 'package:shoesly/core/values/constants/image_constants.dart';
import 'package:shoesly/core/values/enums.dart';
import 'package:shoesly/presentation/protocols/validation.dart';
import 'package:shoesly/presentation/provider/anon_login_provider.dart';
import 'package:shoesly/presentation/provider/login_provider.dart';
import 'package:shoesly/presentation/widgets/general_elevated_button.dart';
import 'package:shoesly/presentation/widgets/general_textfield.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Form(
            key: ref.read(loginProvider.notifier).formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                gapH(100),
                Image(
                  width: 200.w,
                  image: const AssetImage(ImageConstants.logoImage),
                ),
                gapH(50),
                GeneralTextField(
                  labelText: 'Email',
                  keywordType: TextInputType.emailAddress,
                  validate: (value) => Validation().validateEmail(value),
                  textInputAction: TextInputAction.next,
                  controller: ref.read(loginProvider.notifier).emailTEC,
                ),
                gapH(20),
                GeneralTextField(
                  labelText: 'Password',
                  obscureText: false,
                  keywordType: TextInputType.text,
                  validate: Validation().validatePassword,
                  textInputAction: TextInputAction.done,
                  controller: ref.read(loginProvider.notifier).passwordTEC,
                  onClickPsToggle: () {},
                  onFieldSubmit: (_) {
                    ref.read(loginProvider.notifier).onSubmit(ref, context);
                  },
                ),
                gapH(20),
                Consumer(builder: (_, ref, __) {
                  // final loginProviderInstance = ref.watch(loginProvider);
                  return GeneralElevatedButton(
                    title: "Login",
                    marginH: 0,
                    loading: ref.watch(loginProvider).status == Status.LOADING,
                    onPressed: () {
                      ref.read(loginProvider.notifier).onSubmit(ref, context);
                    },
                  );
                }),
                gapH(20),
                Consumer(builder: (_, ref, __) {
                  return GeneralElevatedButton(
                    title: "Anonymous Login",
                    marginH: 0,
                    loading:
                        ref.watch(anonLoginProvider).status == Status.LOADING,
                    onPressed: () {
                      ref
                          .read(anonLoginProvider.notifier)
                          .anonLogin(ref, context: context);
                    },
                  );
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
