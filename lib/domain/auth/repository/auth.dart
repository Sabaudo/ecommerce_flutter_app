import 'package:clot_ecommerce/data/auth/model/user_creation.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {

  Future<Either> signup(UserCreation user);

}