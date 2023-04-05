import 'package:dartz/dartz.dart';
import 'package:todo_application_with_ddd/domain/core/failure.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  final emailValidator = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  if (emailValidator.hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(invalidEmail: input));
  }
}

Either<ValueFailure<String>, String> passwordValidator(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(shortPassword: input));
  }
}
