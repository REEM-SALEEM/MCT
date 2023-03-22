import 'package:flutter/material.dart';
import 'package:machinetesttwo/controller/provider/dropdown_prov.dart';
import 'package:machinetesttwo/controller/provider/login_prov.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Consumer2<LoginProv,DropProv>(
            builder: (BuildContext context, value,val, Widget? child) {
              return Form(
                // key: ,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo.shade700,
                          fontSize: 24),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      controller: value.email,
                      decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.mail_outline),
                          hintText: 'Enter Email Address',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.grey))),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: value.password,
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: 'Enter Password',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                          prefixIcon: const Icon(Icons.key),
                          suffix: Image.asset('assets/images/key.png'),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.grey))),
                    ),
                    const SizedBox(height: 23),
                    const Text(
                      'Forgot Password?',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        color: Colors.blue,
                      ),
                    ),
                    const SizedBox(height: 18),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo.shade800,
                            minimumSize: const Size(400, 40)),
                        onPressed: () {
                          value.apiCallLogin(value.email.text, value.password.text);
                        },
                        child: const Text('SIGN IN')),
                    const SizedBox(height: 25),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Divider(),
                          Text(
                            'Or sign in with',
                            style: TextStyle(color: Colors.grey),
                          ),
                          Divider(),
                        ]),
                    const SizedBox(height: 30),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('assets/images/facerecognition.png'),
                      ),
                      const SizedBox(width: 35),
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset('assets/images/mdi_fingerprint.png'),
                      )
                    ]),
                    const SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text(
                          "Don't have an account? ",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Text(
                          "Sign Up",
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  //  DropdownButton(items: [DropdownMenuItem(child: Row(
                  //    children:  [
                     
                  //     SizedBox(width: 2),
                  //      Text('English'),
                  //    ],
                  //  )),DropdownMenuItem(child: Row(
                  //    children:  [
                    
                  //     SizedBox(width: 2),
                  //      Text('Arabic'),
                  //    ],
                  //  ))], onChanged: (value) {
                     
                  //  },),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
