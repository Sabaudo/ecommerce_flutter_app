import 'package:clot_ecommerce/data/auth/model/user_creation.dart';
import 'package:clot_ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:clot_ecommerce/domain/auth/repository/auth.dart';
import 'package:clot_ecommerce/service_locator.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl extends AuthRepository {


  @override
  Future<Either> signup(UserCreation user) async{
    return sl<AuthFirebaseService>().signup(user);
  }
}