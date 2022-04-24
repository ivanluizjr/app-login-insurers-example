import 'package:authentication/src/data/repositories/auth_repository.dart';
import 'package:authentication/src/presentation/controller/bloc/auth_bloc.dart';
import 'package:authentication/src/presentation/views/SignIn/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => AuthRepository(),
      child: BlocProvider(
        create: ((context) => AuthBloc(
              authRepository: RepositoryProvider.of<AuthRepository>(context),
            )),
        child: const MaterialApp(
          home: SignIn(),
        ),
      ),
    );
  }
}
