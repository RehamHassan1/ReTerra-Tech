import 'package:flutter/material.dart';

Widget TextF({
   String? hinttext,
  FormFieldSetter<String>? onsave,
  IconData? prfx,
  Image? image,
  required TextInputType typ,
  IconData? sfx,
   String? labeltext,

  String? Function(String?)? validator,
  TextEditingController? controller,
  bool obsecure = false,
  Function(String)? onChange,
}) {
  return TextFormField(
    onSaved: onsave,
    keyboardType: typ,
    validator: validator,
    onChanged: onChange,
    obscureText: obsecure,
    controller: controller,
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(1),
      prefixIcon: image,
      border: OutlineInputBorder(
        
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          width: 0,
          style: BorderStyle.none,
        ),
      ),
      hintText: hinttext,
      //labelText: labeltext,
      //labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.black),
      hintStyle: const TextStyle(fontSize: 16, color: Colors.black38),
      fillColor: Colors.white,
      filled: true,
      disabledBorder: InputBorder.none,
    ),
  );
}
