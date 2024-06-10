import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoesly/core/values/constants/image_constants.dart';
import 'package:shoesly/presentation/protocols/validation.dart';
import 'package:shoesly/presentation/provider/auth_provider.dart';
import 'package:shoesly/presentation/widgets/general_elevated_button.dart';
import 'package:shoesly/presentation/widgets/general_textfield.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenwidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Form(
            key: ref.read(authProvider.notifier).formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenheight * .1,
                  child: const BackButton(
                    color: Colors.black,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: screenwidth * .2,
                    right: screenwidth * .2,
                  ),
                  child: const Image(
                    image: AssetImage(ImageConstants.logoImage),
                  ),
                ),
                GeneralTextField(
                  labelText: 'Full Name',
                  keywordType: TextInputType.text,
                  validate: (value) => Validation().validateUserName(value),
                  textInputAction: TextInputAction.next,
                  controller: ref.read(authProvider.notifier).fullNameTEC,
                ),
                const SizedBox(height: 20),
                GeneralTextField(
                  labelText: 'Email',
                  keywordType: TextInputType.emailAddress,
                  validate: (value) => Validation().validateEmail(value),
                  textInputAction: TextInputAction.next,
                  controller: ref.read(authProvider.notifier).emailTEC,
                ),
                const SizedBox(height: 20),
                GeneralTextField(
                  labelText: 'Password',
                  obscureText: true,
                  keywordType: TextInputType.text,
                  validate: (value) => Validation().validatePassword(value),
                  textInputAction: TextInputAction.done,
                  controller: ref.read(authProvider.notifier).passwordTEC,
                  onClickPsToggle: () {},
                ),
                const SizedBox(height: 40),
                Consumer(builder: (context, ref, __) {
                  final authProviderinstance = ref.watch(authProvider);
                  return GeneralElevatedButton(
                      title: "Register",
                      loading: authProviderinstance.signUpLoading,
                      onPressed: () {
                        ref.read(authProvider.notifier).onSubmit(ref, context);
                      });
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
