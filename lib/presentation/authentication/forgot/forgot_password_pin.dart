import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:pinput/pin_put/pin_put.dart';

class ForgotPasswordPin extends StatefulWidget {
  const ForgotPasswordPin({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPinState createState() => _ForgotPasswordPinState();
}

class _ForgotPasswordPinState extends State<ForgotPasswordPin> {
  TextEditingController textEditingController = TextEditingController();
  // ..text = "123456";

  late StreamController<ErrorAnimationType> errorController;

  final _pinPutController = TextEditingController();
  final _pinPutFocusNode = FocusNode();

  @override
  void initState() {
    errorController = StreamController<ErrorAnimationType>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10.0),
        child: Column(
          children: [
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'Enter the 4 digit code sent to you via SMS ',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'at +63 09955 320 0459',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            boxedPinPutWithPreFilledSymbol(),
            const SizedBox(height: 30),
            Row(
              children: const [
                Icon(
                  Icons.message,
                  color: Colors.grey,
                  size: 15,
                ),
                SizedBox(width: 5),
                Text(
                  'Resend SMS in 53s',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget boxedPinPutWithPreFilledSymbol() {
    final pinPutDecoration = BoxDecoration(
      color: Colors.white,
      border: Border.all(color: Colors.deepOrange),
      borderRadius: BorderRadius.circular(8.0),
    );

    final pinInputInactive = pinPutDecoration.copyWith(
      border: Border.all(
        color: const Color.fromRGBO(137, 135, 135, 0.31),
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(3.0),
        border: Border.all(color: Colors.transparent),
      ),
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.symmetric(
        horizontal: 1,
      ),
      child: PinPut(
        withCursor: true,
        fieldsCount: 4,
        textStyle: const TextStyle(fontSize: 25.0, color: Colors.black),
        eachFieldWidth: 60.0,
        eachFieldHeight: 60.0,
        onSubmit: (value) {},
        focusNode: _pinPutFocusNode,
        controller: _pinPutController,
        submittedFieldDecoration: pinInputInactive,
        selectedFieldDecoration: pinPutDecoration,
        followingFieldDecoration: pinInputInactive,
      ),
    );
  }
}
