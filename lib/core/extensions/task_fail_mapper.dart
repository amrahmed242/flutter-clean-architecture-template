import 'package:flutter_mvvm_clean_architecture/core/error/failure.dart';
import 'package:fpdart/fpdart.dart';

extension TaskEitherX<T> on Future<T> Function() {
  ///wraps an async call into a lazy [TaskEither], any thrown error is mapped
  ///into a [Failure] so callers only deal with `Either<Failure, T>`.
  TaskEither<Failure, T> toTaskEither() => TaskEither.tryCatch(
    this,
    (error, _) => error is Failure ? error : Failure(message: error.toString()),
  );
}
