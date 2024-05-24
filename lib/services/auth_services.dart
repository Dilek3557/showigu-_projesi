


import 'package:cloud_firestore/cloud_firestore.dart';
class AuthServices{
final useColection =FirebaseFirestore.instance.collection("users");
Future<void> registerUser({required String name, required String email, required String password}) async{
await useColection.doc().set({
  "email": email,
  "name":name,
  "password":password
});
}


}