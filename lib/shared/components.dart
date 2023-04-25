import 'package:flutter/material.dart';

Widget defaultButton({
  double width=double.infinity,
  Color backgroundColor=Colors.lightBlue,
  //null safety::
  // A Function can be anything, like Function(), Function(int), etc,
  // which is why with Dart null safety, you should explicitly tell what that Function is
  //you can replace the void Function() by VoidCallback
  required final void Function() function,
  required String text,
  double radius=5.0
})=>  Container(
  width: width,

  child: Container(
    decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius:BorderRadius.circular(radius)
    ),
    child: MaterialButton(
      onPressed : function,
      child: Text(
        text.toUpperCase(),
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    ),
  ),
);

Widget defaultFormField({
  required  TextEditingController controller,
  required  TextInputType textInputType,
  required  String? Function(String? string)? validator,
  required  String label,
  required  IconData  prefix,
  IconButton? suffix,
  Function(String string)? onFieldSubmitted,
  Function(String string)? onChange,
  Function()? onTap,
  bool isClickable=true,
  bool isPassword=false,

})=>TextFormField(
  validator:validator,
  controller: controller,
  obscureText: isPassword,
  decoration: InputDecoration(
    labelText:label ,
    prefixIcon:  Icon(prefix) ,
    suffixIcon:  suffix != null ? suffix :null,
    border: OutlineInputBorder(),
  ),
  keyboardType:textInputType,
  onFieldSubmitted:onFieldSubmitted,
  onChanged:onChange,
  onTap: onTap,
  enabled: isClickable,
);