import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverFailure() = ServerFailure;
  const factory AuthFailure.userAlreadyExists() = UserAlreadyExists;
  const factory AuthFailure.invalidEmailAndPassword() = InvalidEmailAndPassword;
}
