import 'package:clot_ecommerce/data/auth/model/user_creation.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

abstract class AuthFirebaseService {

  Future<Either> signup(UserCreation user);
}

class AuthFirebaseServiceImpl implements AuthFirebaseService {

  @override
  Future<Either> signup(UserCreation user) async{
    try {
      var returnedData = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: user.email,
        password: user.password
      );

      FirebaseFirestore.instance.collection('users').doc(returnedData.user?.uid).set({
        'firstName': user.firstName,
        'lastName': user.lastName,
        'email': user.email,
        'password': user.password,
        'gender': user.gender,
        'age': user.age
      });

      return Right('Sign up was successful!');

    } on FirebaseAuthException catch (e) {

      if (e.code == 'weak-password') {
        return Left('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        return Left('The account already exists for that email.');
      } else if (e.code == 'invalid-email') {
        return Left('The email address is badly formatted.');
      } else {
        return Left('An unknown error occurred. Please try again later.');
      }
    }
  }

}