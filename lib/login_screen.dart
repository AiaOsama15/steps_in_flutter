//single file to show loginrScreen abudullahMansour
import 'package:flutter/material.dart';
import 'package:test_/Massenger_screens/massenger_screen.dart';
// import 'package:test_/widget/custom_textformfield.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  bool obsecure = true;
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text('First app'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          const Icon(Icons.notification_important),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 12,
                ),
                TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                      labelText: 'Enter your email',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email)),
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(
                      label: Text(
                        'Enter your password',
                      ),
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.password_outlined),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                  obscureText: obsecure,
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.5,
                    height: 36,
                    child: ElevatedButton(
                        onPressed: () {
                          // print(emailController.text);
                          // print(passwordController.text);
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const MessangerScreen(),
                            ),
                          );
                        },
                        child: const Text('LOGIN'))),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Don\'t have an account?!  ',
                      style: TextStyle(),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Text(
                        'Register Now',
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ),
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
