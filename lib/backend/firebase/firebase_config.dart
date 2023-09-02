import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCgELDqxlF9p8AfkKm5frGmHReCvXClbXE",
            authDomain: "mypantrypalfixer.firebaseapp.com",
            projectId: "mypantrypalfixer",
            storageBucket: "mypantrypalfixer.appspot.com",
            messagingSenderId: "262759181239",
            appId: "1:262759181239:web:267bef477d15e5f9b29632",
            measurementId: "G-M6QZ3D7J5Y"));
  } else {
    await Firebase.initializeApp();
  }
}
