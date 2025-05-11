import 'package:clot_ecommerce/data/auth/repository/auth_repository_impl.dart';
import 'package:clot_ecommerce/data/auth/source/auth_firebase_service.dart';
import 'package:clot_ecommerce/domain/auth/repository/auth.dart';
import 'package:clot_ecommerce/domain/auth/usecase/signup.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

// O GetIt ajuda na organização e injeção de dependências, 
//facilitando o gerenciamento de instâncias de classes em todo o aplicativo.
Future<void> initializeDependencies() async {

  // Services
  sl.registerSingleton<AuthFirebaseService> (
    AuthFirebaseServiceImpl()
  );

  // Repositories
  sl.registerSingleton<AuthRepository> (
    AuthRepositoryImpl()
  );

  // Use Cases
  sl.registerSingleton<SignupUseCase> (
    SignupUseCase()
  );
}