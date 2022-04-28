import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/Screens/home_screen.dart';
import 'package:task5/Screens/sign_up_screen.dart';
import 'package:task5/widgets/textfield_item.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  'assets/images/Login_Photo.jpg',
                  height: MediaQuery.of(context).size.height * 0.3,
                ),
                const CustomTextInputFormField(
                  labelText: 'E-mail',
                  hintText: 'Enter Your Email',
                  icon: Icon(Icons.email),
                ),
                const CustomTextInputFormField(
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  icon: Icon(Icons.lock),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()));
                    },
                    style: ElevatedButton.styleFrom(primary: const Color(0xff990000)),
                    child: const Text(
                      'Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.end,
                    )),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                      textAlign: TextAlign.end,
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.end,
                        )),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
