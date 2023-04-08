part of 'account_bloc.dart';

class AccountState extends Equatable {
  const AccountState._({required this.status});
  const AccountState.initial({this.status = CommonStatus.initial});

  final CommonStatus status;

  AccountState copyWith({CommonStatus? status}) {
    return AccountState._(status: status ?? this.status);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [status];
}
