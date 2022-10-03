import 'package:flutter/material.dart';

class InputFieldIcon extends StatefulWidget {
  final String labelInput;
  final IconData? suffixIcon;
  final IconData? prefixIcon;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final TextInputType? keyboardType;
  final bool obscureText;

  final String formProperty;
  // final Map<String, String> formValues;

  const InputFieldIcon({
    Key? key,
    required this.labelInput,
    this.hintText,
    this.labelText,
    this.helperText,
    this.icon,
    this.suffixIcon,
    this.keyboardType,
    this.obscureText = false,
    required this.formProperty,
    this.prefixIcon,
    // required this.formValues,
  }) : super(key: key);

  @override
  State<InputFieldIcon> createState() => _InputFieldIconState();
}

class _InputFieldIconState extends State<InputFieldIcon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              widget.labelInput,
              style: const TextStyle(
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  color: Color(0XFFA2A2A7)),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        TextFormField(
          style: const TextStyle(
              fontSize: 14,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              color: Color(0XFF1E1E2D)),
          autofocus: false,
          initialValue: '',
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText,
          onChanged: (value) {},
          // validator: (value) {
          //   if (value == null) return 'Este campo es requerido';
          //   return value.length < 3 ? 'Mínimo de 03 letras' : null;
          // },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 2.0),
            hintText: widget.hintText,
            labelText: widget.labelText,
            helperText: widget.helperText,
            // counterText: '3 cáracteres'
            suffixIcon: widget.suffixIcon == null
                ? null
                : InkWell(
                  onTap: () => {!(widget.obscureText), print(widget.obscureText)},
                  child: Icon(
                      widget.suffixIcon,
                      color: Color(0XFFA2A2A7),
                    ),
                ),
            prefixIcon: widget.prefixIcon == null
                ? null
                : Icon(
                    widget.prefixIcon,
                    color: Color(0XFFA2A2A7),
                    size: 22,
                  ),
            icon: widget.icon == null ? null : Icon(widget.icon),
          ),
        ),
      ],
    );
  }
}
