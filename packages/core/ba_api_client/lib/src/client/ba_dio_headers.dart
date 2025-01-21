import 'package:equatable/equatable.dart';

class BaDioHeaders extends Equatable {
  const BaDioHeaders({
    required this.contentType,
    required this.accept,
    required this.authorization,
  });

  factory BaDioHeaders.baseParams() {
    return const BaDioHeaders(
      contentType: 'application/json',
      accept: 'application/json',
      authorization: '',
    );
  }

  final String contentType;
  final String accept;
  final String authorization;

  BaDioHeaders copyWith({
    String? contentType,
    String? accept,
    String? authorization,
  }) {
    return BaDioHeaders(
      contentType: contentType ?? this.contentType,
      accept: accept ?? this.accept,
      authorization: authorization ?? this.authorization,
    );
  }

  Map<String, String> toMap() {
    if (authorization != '') {
      return {
        'content-type': contentType,
        'accept': accept,
        'authorization': 'Bearer $authorization',
      };
    } else {
      return {
        'content-type': contentType,
        'accept': accept,
      };
    }
  }

  @override
  List<Object> get props => [contentType, accept, authorization];
}
