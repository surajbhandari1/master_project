import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'features/SplashScreen/splash_screen.dart';
import 'myBloc/auth_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const LoginMe());
}

class LoginMe extends StatelessWidget {
  const LoginMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AuthCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const SplashScreen(),
      ),
    );
  }
}
