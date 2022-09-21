import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.etInput,
  }) : super(key: key);

  final TextEditingController etInput;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        hintText: 'Masukkan Angka Dalam Celcius',
        labelText: 'Masukkan Angka Dalam Celcius',
      ),
      controller: etInput,
      keyboardType: TextInputType.number,
      // inputFormatters: <TextInputFormatter>[
      //   FilteringTextInputFormatter.digitsOnly
      // ],
    );
  }
}
