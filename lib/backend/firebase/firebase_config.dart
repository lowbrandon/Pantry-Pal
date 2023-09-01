import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBxA5NIDN2ceHzHUtrsC3Fz7HmD3j5Jv1s",
            authDomain: "mypantrypal-614f2.firebaseapp.com",
            projectId: "mypantrypal-614f2",
            storageBucket: "mypantrypal-614f2.appspot.com",
            messagingSenderId: "1036171757285",
            appId: "1:1036171757285:web:c99e08ea0f60ba9838360c",
            measurementId: "G-Y567NYRH3K"));
  } else {
    await Firebase.initializeApp();
  }
}
