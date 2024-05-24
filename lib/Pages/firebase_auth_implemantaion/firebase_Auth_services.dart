import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthServices{
  late FirebaseAuth _auth = FirebaseAuth.instance;
  Future<User?> signUpWithEmailAndPassword(String email, String password) async {
   try{
     UserCredential credential = await  _auth.signInWithEmailAndPassword(email: email, password: password) as UserCredential;
         return credential.user;
   }
   catch(e) {
     print("Some error occured");
     return null;
   }
  }
}