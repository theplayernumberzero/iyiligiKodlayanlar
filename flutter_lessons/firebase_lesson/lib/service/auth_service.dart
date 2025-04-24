import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final _auth = FirebaseAuth.instance;

  Future<String?> login(String email, String password) async {
    try {
      final userCredentail = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return userCredentail.user?.uid;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      return null;
    } catch (e) {}
  }

  Future<String?> register(String email, String password) async {
    try {
      final credentail = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credentail.user?.uid;
    } on FirebaseAuthException catch (e) {
      print(e.code);
      return null;
    } catch (e) {}
  }

  void logout() async {
    await _auth.signOut();
  }
}
