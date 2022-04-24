// import 'package:authentication/src/presentation/controller/bloc/auth_bloc.dart';
// import 'package:authentication/src/presentation/controller/bloc/auth_event.dart';
// import 'package:authentication/src/presentation/controller/bloc/auth_state.dart';
// import 'package:authentication/src/presentation/views/Home/home_page.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../widgets/drawer_widget.dart';

// class SignUp extends StatefulWidget {
//   const SignUp({Key? key}) : super(key: key);

//   @override
//   State<SignUp> createState() => _SignUpState();
// }

// class _SignUpState extends State<SignUp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocConsumer<AuthBloc, AuthState>(
//         listener: (context, state) {
//           if (state is Authenticated) {
//             Navigator.of(context).pushReplacement(
//               MaterialPageRoute(
//                 builder: (context) => const HomePage(),
//               ),
//             );
//           } else if (state is AuthError) {
//             ScaffoldMessenger.of(context).showSnackBar(
//               const SnackBar(
//                 content: Text('Usuário não foi cadastrado!'),
//               ),
//             );
//           }
//         },
//         builder: (context, state) {
//           if (state is Loading) {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           } else if (state is UnAuthenticated) {
//             return Scaffold(
//               backgroundColor: const Color(0xFF20242A),
//               appBar: AppBar(
//                 backgroundColor: const Color(0xFF29917C),
//               ),
//               drawer: const DrawerWidget(),
//             );
//           }
//           return Container();
//         },
//       ),
//     );
//   }
// }

// void __authenticateWithEmailAndPassword(context) {
//   if (_formKey.currentState!.validate()) {
//     BlocProvider.of<AuthBloc>(context).add(
//       SignUpRequested(_emailController.tex, _passwordController.text),
//     );
//   }
// }
