import 'package:clot_ecommerce/data/auth/model/user_creation.dart';
import 'package:clot_ecommerce/domain/auth/repository/auth.dart';
import 'package:clot_ecommerce/usecase/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:clot_ecommerce/service_locator.dart';

class SignupUseCase implements Usecase<Either,UserCreation> {

  @override
  Future<Either> call(UserCreation params) async {
    return await sl<AuthRepository>().signup(params);
  }
}