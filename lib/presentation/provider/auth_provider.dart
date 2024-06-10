import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shoesly/presentation/services/auth.dart';

// provider to access the FirebaseAuth instance
final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});

final authRepositoryImpl = StateProvider<AuthServiceImpl>((ref) {
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  return AuthServiceImpl(
    firebaseAuth,
  );
});

final authStateChangesProvider = StreamProvider.autoDispose<User?>((ref) {
  // get FirebaseAuth from the provider below
  final firebaseAuth = ref.watch(firebaseAuthProvider);
  // call a method that returns a Stream<User?>
  return firebaseAuth.authStateChanges();
});

final authProvider = ChangeNotifierProvider<AuthProvider>((ref) {
  return AuthProvider(ref, ref.watch(authRepositoryImpl));
});

class AuthProvider with ChangeNotifier {
  final AuthService authService;
  final ChangeNotifierProviderRef<AuthProvider> ref;
  final fullNameTEC = TextEditingController();
  final emailTEC = TextEditingController();
  final passwordTEC = TextEditingController();
  final formKey = GlobalKey<FormState>();

  AuthProvider(this.ref, this.authService);

  bool _signUpLoading = false;

  bool get signUpLoading => _signUpLoading;
  setSignUpLoading(bool value) {
    _signUpLoading = value;
    notifyListeners();
  }

  onSubmit(WidgetRef ref, BuildContext context) {
    //Validate
    if (formKey.currentState!.validate()) {
      register(ref, context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Validation failed!')),
      );
    }
  }

  Future<void> register(
    WidgetRef ref,
    BuildContext context,
  ) async {
    await Future.delayed(Duration.zero);
    setSignUpLoading(true);
    // Map body = {
    //   "fullName": fullNameTEC.text,
    //   "email": emailTEC.text,
    //   "password": passwordTEC.text,
    // };
    // _myRepo.register(body).then((value) {
    //   setSignUpLoading(false);
    //   context.goNamed(AppRoutes.homeRoute);
    //   showToast("Registration successful.");
    // }).onError((error, stackTrace) {
    //   setSignUpLoading(false);
    //   showToast(error.toString());
    // });
  }
}
