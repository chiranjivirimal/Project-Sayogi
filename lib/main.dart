import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_sayogi/bloc/auth_bloc.dart';

import 'package:project_sayogi/repositories/auth_repository.dart';
import 'package:project_sayogi/splashscreen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  
  const String baseUrl = 'http://192.168.1.209:8000/api';

  final authRepository = AuthRepository(baseUrl: baseUrl);

  runApp(MyApp(authRepository: authRepository));
}

class MyApp extends StatelessWidget {
  final AuthRepository authRepository;

  const MyApp({super.key, required this.authRepository});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => AuthBloc(authRepository: authRepository),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Sayogi Project',
        theme: ThemeData(primarySwatch: Colors.green),
        home: const Splashscreen(),
      ),
    );
  }
}
