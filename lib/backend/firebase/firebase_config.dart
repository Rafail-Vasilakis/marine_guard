import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBiNbq9zaPVzWlrb2Ef-DpzGexFiIin954",
            authDomain: "marineguard-e0ce9.firebaseapp.com",
            projectId: "marineguard-e0ce9",
            storageBucket: "marineguard-e0ce9.appspot.com",
            messagingSenderId: "586194472764",
            appId: "1:586194472764:web:3c28bebce94796a58c5839"));
  } else {
    await Firebase.initializeApp();
  }
}
