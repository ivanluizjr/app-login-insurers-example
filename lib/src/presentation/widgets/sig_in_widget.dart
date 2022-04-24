import 'package:firebase_auth/firebase_auth.dart';

class SigIn {
  String email;
  String password;

  SigIn({
    required this.email,
    required this.password,
  });

  Future sigIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
  }
}
