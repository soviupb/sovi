import 'package:flutter/material.dart';

import '../utils/custom_colors.dart';

class CustomFormField extends StatelessWidget {
  const CustomFormField({
    Key? key,
    required TextEditingController controller,
    required FocusNode focusNode,
    required String hint,
    required TextInputAction inputAction,
    required Function(String value) validator,
    this.maxLines = 1,
  })  : _controller = controller,
        _focusNode = focusNode,
        _hint = hint,
        _validator = validator,
        _inputAction = inputAction,
        super(key: key);

  final TextEditingController _controller;
  final FocusNode _focusNode;
  final TextInputAction _inputAction;
  final String _hint;
  final int maxLines;
  final Function(String) _validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: _controller,
      focusNode: _focusNode,
      textInputAction: _inputAction,
      cursorColor: CustomColors.SoviAmarillo,
      validator: (value) => _validator(value!),
      decoration: InputDecoration(
        labelStyle: const TextStyle(color: CustomColors.SoviNaranjaLight),
        hintText: _hint,
        hintStyle: const TextStyle(
          color: CustomColors.SoviGris,
        ),
        errorStyle: const TextStyle(
          color: Colors.redAccent,
          fontWeight: FontWeight.bold,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: CustomColors.SoviAmarillo,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: CustomColors.SoviAzul,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: const BorderSide(
            color: Colors.redAccent,
            width: 2,
          ),
        ),
      ),
    );
  }
}
