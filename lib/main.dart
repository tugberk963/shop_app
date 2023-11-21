import 'package:flutter/material.dart';
import 'package:shop_app/screens/wrapper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shop_app/services/auth.dart';
import 'firebase_options.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/user.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<LocalUser?>.value(
      catchError: (_, __) => null,
      value: AuthService().user,
      initialData: null,
      child: const MaterialApp(
        home: Wrapper(),
      ),
    );
  }
}