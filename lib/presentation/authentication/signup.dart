import 'package:flutter/material.dart';
import 'login.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isEncrypted = false;

  bool isCheckTermsAndConditions = false;
  bool isCheckPrivacyAndPolicy = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Sign up to place orders',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              initialValue: '',
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
                prefixIcon: const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    '+63',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),
                ),
                hintText: '905 123 4567',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(height: 15),
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
                hintText: 'Email (optional)',
              ),
            ),
            const SizedBox(height: 15),
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
            const SizedBox(height: 15),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Checkbox(
                  value: isCheckTermsAndConditions,
                  fillColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.deepOrange),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  onChanged: (checked) {
                    setState(() {
                      isCheckTermsAndConditions = checked!;
                    });
                  },
                ),
                Positioned(
                  left: 40,
                  top: 15,
                  child: Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '''I have read, understood and accept the''',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: ' Terms and\n',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.deepOrange,
                              ),
                            ),
                            TextSpan(
                              text: 'Conditions',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.deepOrange,
                              ),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy Policy',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Checkbox(
                  value: isCheckPrivacyAndPolicy,
                  fillColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.deepOrange),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  onChanged: (checked) {
                    setState(() {
                      isCheckPrivacyAndPolicy = checked!;
                    });
                  },
                ),
                Positioned(
                  left: 40,
                  top: 15,
                  child: Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  '''I agree the use of my personal data for direct\n''',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: 'marketing in accordance with thee stated ',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.grey,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy\n',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.deepOrange,
                              ),
                            ),
                            TextSpan(
                              text: 'Policy',
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.deepOrange,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.10),
                ),
                child: const Text(
                  'Sign up',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 15),
            const Align(
              alignment: Alignment.topCenter,
              child: Text(
                'You will receive an SMS or call for verification',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey,
                ),
              ),
            ),
            const Spacer(),
            Align(
              alignment: Alignment.topCenter,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                ),
                child: const Text(
                  'Already have an account?',
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
