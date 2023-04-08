part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent(this.context);

  final BuildContext context;
}

class RegisterButtonPressed extends RegisterEvent {
  const RegisterButtonPressed(super.context, {required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  List<Object?> get props => [super.context,formKey];

}
