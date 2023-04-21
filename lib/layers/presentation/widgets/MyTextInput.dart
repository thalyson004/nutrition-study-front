import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextInput extends StatefulWidget {
  const MyTextInput(
      {Key? key,
      required TextEditingController controller,
      required String labelText,
      String? infoText,
      bool isPassword = false,
      FormFieldValidator<String>? validator,
      GlobalKey<FormState>? formKey,
      bool autofocus = false,
      TextInputType? keyboardType,
      Function(String)? onChanged,
      String? errorText})
      : _controller = controller,
        _labelText = labelText,
        _infoText = infoText,
        _isPassword = isPassword,
        _validator = validator,
        _formKey = formKey,
        _errorText = errorText,
        _autofocus = autofocus,
        _keyboardType = keyboardType,
        _onChanged = onChanged,
        super(key: key);

  final TextEditingController _controller;
  final String _labelText;
  final String? _infoText;
  final bool _isPassword;
  final FormFieldValidator<String>? _validator;
  final GlobalKey<FormState>? _formKey;
  final String? _errorText;
  final bool _autofocus;
  final TextInputType? _keyboardType;
  final Function(String)? _onChanged;

  @override
  State<MyTextInput> createState() => _MyTextInputState();
}

class _MyTextInputState extends State<MyTextInput> {
  bool _obscurePassword = false;

  @override
  void initState() {
    super.initState();
    _obscurePassword = widget._isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Form(
                key: widget._formKey,
                child: TextFormField(
                  validator: widget._validator,
                  style: const TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 16,
                  ),
                  autofocus: widget._autofocus,
                  controller: widget._controller,
                  onChanged: widget._onChanged,
                  obscureText: _obscurePassword,
                  keyboardType: widget._keyboardType,
                  decoration: InputDecoration(
                    errorText: widget._errorText != null ? "" : null,
                    errorStyle: const TextStyle(
                      fontSize: 16,
                      color: Colors.red,
                    ),
                    filled: true,
                    fillColor: const Color(0xFF384686),
                    disabledBorder: InputBorder.none,
                    border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Colors.white,
                        width: 1,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      gapPadding: 20,
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        style: BorderStyle.solid,
                        color: Color(0xFFBABDC0),
                        width: 1,
                      ),
                    ),
                    focusedBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: Color(0xFFBABDC0),
                      ),
                    ),
                    errorBorder: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50.0)),
                      borderSide: BorderSide(
                        color: Colors.red,
                      ),
                    ),
                    hintText: widget._labelText,
                    hintStyle: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: widget._errorText == null
                            ? Color(0xFFBABDC0)
                            : Colors.red,
                        fontSize: 16,
                      ),
                    ),
                    prefix: const SizedBox(
                      width: 10,
                    ),
                    suffixIcon: widget._isPassword
                        ? Padding(
                            padding: const EdgeInsets.only(right: 15),
                            child: GestureDetector(
                              child: Icon(
                                _obscurePassword == true
                                    ? FontAwesomeIcons
                                        .eyeSlash //Icons.visibility_off_outlined
                                    : FontAwesomeIcons.eye,
                                color: const Color(0xFFFFFFFF),
                                size: 18,
                              ),
                              onTap: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                          )
                        : null,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
