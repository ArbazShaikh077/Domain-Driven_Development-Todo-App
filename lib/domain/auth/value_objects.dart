import 'package:dartz/dartz.dart';
import 'package:todo_application_with_ddd/domain/core/abstract_value_object.dart';
import 'package:todo_application_with_ddd/domain/core/failure.dart';
import 'package:todo_application_with_ddd/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  factory EmailAddress(String input) {
    return EmailAddress._(validateEmail(input));
  }
  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;
  factory Password(String input) {
    return Password._(passwordValidator(input));
  }
  const Password._(this.value);
}
