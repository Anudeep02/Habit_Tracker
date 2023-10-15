import 'package:flutter/material.dart';

final _formKey = GlobalKey<FormState>();

class MyAlertBox extends StatelessWidget {
  final controller;
  final String hintText;
  final VoidCallback onSave;
  final VoidCallback onCancel;

  const MyAlertBox({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onSave,
    required this.onCancel,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AlertDialog(
        backgroundColor: Colors.grey[900],
        content: TextFormField(
          validator: (value) {
            if(value == null || value.isEmpty){
              return 'Enter Something';
            }
            return null;
          },
          controller: controller,
          style: const TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.grey[600]),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
            focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white)),
          ),
        ),
        actions: [
          MaterialButton(
            onPressed: () {
              if(_formKey.currentState!.validate()){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Done'),
                  ),
                );
                onSave();
              }
            },
            child: Text(
              "Save",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
          ),
          MaterialButton(
            onPressed: onCancel,
            child: Text(
              "Cancel",
              style: TextStyle(color: Colors.white),
            ),
            color: Colors.black,
          ),
        ],
      ),
    );
  }
}
