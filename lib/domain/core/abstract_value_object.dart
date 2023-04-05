import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';

import 'package:todo_application_with_ddd/domain/core/failure.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  @override
  bool operator ==(Object other) {
    return other is ValueObject<T> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => "$value";
}
