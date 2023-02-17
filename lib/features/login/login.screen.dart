import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UrbanLoginScreen extends ConsumerWidget {
  const UrbanLoginScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final GlobalKey<FormState> formKey = GlobalKey();
    TextEditingController usernameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      body: Row(
        children: [
          const Expanded(
              child: Placeholder(
            color: Colors.blue,
          )),
          Expanded(
              child: Form(
            key: formKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 120, horizontal: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: usernameController,
                    decoration: InputDecoration(
                        hintText: "User Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        )),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // MaterialButton(
                      //   color: Colors.greenAccent,
                      //   onPressed: () async {
                      //     if (formKey.currentState!.validate()) {
                      //       Navigator.of(context).pushNamed("/home1");
                      //     }
                      //   },
                      //   child: Text("Login 1"),
                      // ),
                      // MaterialButton(
                      //   color: Colors.greenAccent,
                      //   onPressed: () async {
                      //     if (formKey.currentState!.validate()) {
                      //       Navigator.of(context).pushNamed("/home2");
                      //     }
                      //   },
                      //   child: Text("Login 2"),
                      // ),
                      // MaterialButton(
                      //   color: Colors.greenAccent,
                      //   onPressed: () async {
                      //     if (formKey.currentState!.validate()) {
                      //       Navigator.of(context).pushNamed("/home3");
                      //     }
                      //   },
                      //   child: Text("Login 3"),
                      // ),
                      MaterialButton(
                        color: Colors.greenAccent,
                        onPressed: () async {
                          if (formKey.currentState!.validate()) {
                            Navigator.of(context).pushNamed("/home4");
                          }
                        },
                        child: Text("Login 4"),
                      )
                    ],
                  )
                ],
              ),
            ),
          )),
        ],
      ),
    );
  }
}
