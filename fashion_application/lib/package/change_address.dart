import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

class AddressChanged extends Equatable {
  final String address;

  AddressChanged(this.address);

  @override
  List<Object> get props => [address];
}

class AddressState extends Equatable {
  final String address;

  AddressState(this.address);

  @override
  List<Object> get props => [address];
}

class AddressBloc extends Bloc<AddressChanged, AddressState> {
  AddressBloc() : super(AddressState('Bekasi, Indonesia'));

  @override
  Stream<AddressState> mapEventToState(AddressChanged event) async* {
    yield AddressState(event.address);
  }
}
