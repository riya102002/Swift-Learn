import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCrhZQbZEtPZeui9U__yeQhWT_VaU2j_fo",
            authDomain: "swift-learn-5fa05.firebaseapp.com",
            projectId: "swift-learn-5fa05",
            storageBucket: "swift-learn-5fa05.appspot.com",
            messagingSenderId: "93496950627",
            appId: "1:93496950627:web:be539a7fcb5e4f30159d56",
            measurementId: "G-QJ516EJGL4"));
  } else {
    await Firebase.initializeApp();
  }
}
