import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lalamove_copy/presentation/authentication/signup.dart';

import 'forgot/forgot_password.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isEncrypted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Great to have you back!',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 30),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.20),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                hintText: 'Phone number or Email',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: isEncrypted,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: BorderSide(
                    color: Colors.black.withOpacity(0.20),
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7),
                  borderSide: const BorderSide(
                    color: Colors.black,
                  ),
                ),
                hintText: 'Password (min 6 characters)',
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isEncrypted) {
                        isEncrypted = false;
                      } else {
                        isEncrypted = true;
                      }
                    });
                  },
                  child: Icon(
                    isEncrypted ? Icons.visibility_off : Icons.visibility,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.10),
                ),
                child: const Text(
                  'Log In',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 25),
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'or log in with',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                const Spacer(),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.20),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: const IconButton(
                    onPressed: null,
                    icon: FaIcon(
                      FontAwesomeIcons.facebookF,
                      color: Color(0xff3B5998),
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black.withOpacity(0.20),
                    ),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/grommet-icons_google.png',
                    height: 15,
                    width: 15,
                  ),
                ),
                const Spacer(),
              ],
            ),
            const Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ForgotPasswordScreen(),
                  ),
                ),
                child: const Text(
                  'Forgot password?',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignupScreen(),
                  ),
                ),
                child: const Text(
                  '''Don't have an account?''',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
