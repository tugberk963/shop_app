import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop_app/models/user.dart';

class AuthService {

  final FirebaseAuth _auth = FirebaseAuth.instance;

  LocalUser _firebaseToLocal (User? user){
    return LocalUser(uid: user!.uid);
  }

  // auth change user stream
  Stream<LocalUser> get user {
    return _auth.authStateChanges()
    //.map((User? user) => _firebaseToLocal(user));
    .map(_firebaseToLocal);
  }

  // sign-in anon
  Future signInAnon() async {
    try{
       UserCredential result = await _auth.signInAnonymously();
       User? user = result.user;
      return _firebaseToLocal(user);
    }
    catch(e){
      print(e.toString());
      return null;
    }
  }

  // sign-in with email & password

  // register with email & password

  // sign-out
  Future signOut() async {
    try{
      return await _auth.signOut();
    }
    catch(e){
      print(e.toString());
      return null;
    }

  }


}