// ignore_for_file: one_member_abstracts

import 'package:ba_utils/ba_utils.dart';
import 'package:equatable/equatable.dart';
import 'package:oxidized/oxidized.dart';

abstract class UseCase<T extends Object, Params> {
  Future<Result<T, Failure>> call(Params params);
}

class NoParams extends Equatable {
  const NoParams();

  @override
  List<Object> get props => [];
}
