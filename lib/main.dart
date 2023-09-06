import 'package:flutter/material.dart';
import 'package:instagram/screens/signup_screen.dart';
import 'utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
//to check if the device
import 'package:flutter/foundation.dart' show kIsWeb;

//asynchronous
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    //to check if its web which if true needs options like the apikey etc
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCq19_XoCjCjbRk5P8ayuwoBDU2f_Hb-CU",
            authDomain: "instaclone-27d2d.firebaseapp.com",
            projectId: "instaclone-27d2d",
            storageBucket: "instaclone-27d2d.appspot.com",
            messagingSenderId: "239842357036",
            appId: "1:239842357036:web:191151e59ac67ca25f4689"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Instagram Clone',
        theme: ThemeData.dark()
            .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
        home: const SignupScreen()

        //ResponsiveLayout(
        //    WebScreenLayout: WebScreenLayout(),
        //    mobileScreenLayout: MobileScreenLayout())
        );
  }
}
