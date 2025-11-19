import 'package:attendance_app/wrapper/auth_wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyAhJrfj2U-2UeEzMxvylF96Kq44jNyY_q0",
      appId: "1:117787794731:android:88c92cecdced06df82796e",
      messagingSenderId: "117787794731",
      projectId: "attendance-app-c4d78",
    )
  );
  runApp(AttendanceApp());
}

class AttendanceApp extends StatelessWidget {
  const AttendanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Attendance App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
        )
      ),
      home: AuthWrapper(),
    );
  }
}