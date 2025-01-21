import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure({
    required this.message,
  });

  final String message;

  @override
  List<Object> get props => [message];
}

class ServiceFailure extends Failure {
  const ServiceFailure({
    super.message = 'Something went wrong, try again later',
  });
}

class StorageFailure extends Failure {
  const StorageFailure({
    super.message = 'Something went wrong, try again later',
  });
}
