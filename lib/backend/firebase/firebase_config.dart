import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBAx4BSjNDMuja53-pQ0upWvwp7tZLFX9U",
            authDomain: "bestbeforebrotherman.firebaseapp.com",
            projectId: "bestbeforebrotherman",
            storageBucket: "bestbeforebrotherman.appspot.com",
            messagingSenderId: "725094229880",
            appId: "1:725094229880:web:2e0e0adbe0826295d40a8d",
            measurementId: "G-F08PXT3REB"));
  } else {
    await Firebase.initializeApp();
  }
}
