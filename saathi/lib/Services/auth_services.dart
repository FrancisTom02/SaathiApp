import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class AuthServices {
  static final _firebaseAuth = FirebaseAuth.instance;
  static FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<String> signup({
    required String email,
    required String password,
    required int value,
    String? role,
  }) async {
    String res = "something went wrong";
    try {
      UserCredential _cred = await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      res = "success";
      if (value == 1) {
        await FirebaseFirestore.instance
            .collection('users')
            .doc(_cred.user?.uid)
            .set({'email': email, 'role': role});
      } else if (value == 0) {
        await FirebaseFirestore.instance
            .collection('volunteer')
            .doc(_cred.user?.uid)
            .set({'email': email, 'role': role});
      }
    } catch (e) {
      res = e.toString();
    }
    // await FirebaseFirestore.instance
    //     .collection('user')
    //     .doc(FirebaseAuth.instance.currentUser!.uid)
    //     .set({'email': email});

    return res;
  }

  static Future<String> login(
      {required String email, required String password}) async {
    String res = "something went wrong";
    try {
      UserCredential _cred = await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      final role = await getrole();
      res = role;
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  static getrole() async {
    String res = "something went wrong";
    try {
      String uid = _firebaseAuth.currentUser!.uid;
      final data = await _firestore.collection('volunteer').doc(uid).get();
      final data1 = await _firestore.collection('users').doc(uid).get();
      if (data.data() != null) {
        res = data.data()!['role'];
      } else {
        res = data1.data()!['role'];
      }
    } catch (e) {
      res = e.toString();
      print(res);
    }
    return res;
  }
}
