

import 'package:equatable/equatable.dart';

class AppError extends Equatable{
final String msg;

const AppError(this.msg);

  @override
  // TODO: implement props
  List<Object> get props => [msg];

}