import 'package:fashion_application/package/change_address.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddressDialog extends StatefulWidget {
  @override
  _AddressDialogState createState() => _AddressDialogState();
}

class _AddressDialogState extends State<AddressDialog> {
  final TextEditingController _addressController = TextEditingController();
  final addressBloc = AddressBloc();

  get newAddress => null;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddressBloc>(
      create: (context) => addressBloc,
      child: BlocBuilder<AddressBloc, AddressState>(
        builder: (context, state) => AlertDialog(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          title: const Text('Ubah Alamat'),
          content: TextField(
            controller: _addressController,
            decoration: InputDecoration(
              labelText: 'Alamat baru',
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context, _addressController.text);
              },
              child: const Text('Simpan'),
            ),
          ],
        ),
      ),
    );
  }
}
