import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBv4eNvPkmTya75-SMsoPUnJYxQXJOru2s",
            authDomain: "mzab-f537f.firebaseapp.com",
            projectId: "mzab-f537f",
            storageBucket: "mzab-f537f.appspot.com",
            messagingSenderId: "773219195197",
            appId: "1:773219195197:web:c97f38c92c6c9f00d24d54",
            measurementId: "G-QM6K5WV1D8"));
  } else {
    await Firebase.initializeApp();
  }
}
