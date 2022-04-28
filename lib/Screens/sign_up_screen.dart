import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task5/Screens/login_screen.dart';
import 'package:task5/widgets/textfield_item.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              Image.asset(
                'assets/images/Sign_up.jpg',
                height: MediaQuery.of(context).size.height * 0.3,
              ),
              Column(
                children: [
                  const CustomTextInputFormField(
                    labelText: 'First Name',
                    hintText: 'Enter Your First Name',
                    icon: Icon(Icons.person_outline),
                  ),
                  const CustomTextInputFormField(
                    labelText: 'Last Name',
                    hintText: 'Enter Your Last Name',
                    icon: Icon(Icons.person_outline,),
                  ),
                  const CustomTextInputFormField(
                    labelText: 'E-mail',
                    hintText: 'Enter Your E-mail',
                    icon: Icon(Icons.email),
                  ),
                  const CustomTextInputFormField(
                    labelText: 'Password',
                    hintText: 'Enter Your Password',
                    icon: Icon(Icons.lock),
                  ),
                  const CustomTextInputFormField(
                    labelText: 'Phone Number',
                    hintText: 'Enter Your Phone Number',
                    icon: Icon(Icons.phone_enabled_outlined),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already have an account?',
                        style: TextStyle(color: Colors.black, fontSize: 17),
                        textAlign: TextAlign.end,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginScreen()));
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.end,
                          )),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
