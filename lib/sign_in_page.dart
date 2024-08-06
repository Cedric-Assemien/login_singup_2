import 'package:flutter/material.dart';
import 'package:login_singnup_2/signup_page.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:social_media_buttons/social_media_icons.dart';

class signIn extends StatefulWidget {
  const signIn({super.key});

  @override
  State<signIn> createState() => _signInState();
}

class _signInState extends State<signIn> {
  final formKey = GlobalKey<FormState>();

  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff85a236),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Need some help ?",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Let's get something",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            "Good to see you back",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                                fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                FilledButton.icon(
                                    style: FilledButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 246, 244, 244),
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    label: const Icon(
                                      SocialMediaIcons.google,
                                      color: Colors.red,
                                    )),
                                FilledButton.icon(
                                    style: FilledButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 24, 4, 209),
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    label: const Icon(
                                      SocialMediaIcons.facebook,
                                      color: Colors.white,
                                    )),
                                FilledButton.icon(
                                    style: FilledButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff82dcff),
                                        shape: const CircleBorder()),
                                    onPressed: () {},
                                    label: const Icon(
                                      SocialMediaIcons.twitter,
                                      color: Colors.white,
                                    ))
                              ]),
                          const SizedBox(
                            height: 30,
                          ),
                          Form(
                            key: formKey,
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20, bottom: 20),
                                  child: TextFormField(
                                    controller: emailController,
                                    keyboardType: TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "remplissez les champs";
                                      } else {
                                        FocusScope.of(context).unfocus();
                                      }
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Entrer votre Email",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.orange),
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey.withOpacity(0.1),
                                        prefixIcon: const Icon(
                                            Icons.mail_outline_outlined)),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 20, bottom: 20),
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: passwordController,
                                    keyboardType: TextInputType.text,
                                    validator: (value) {
                                      if (value == null || value.isEmpty) {
                                        return "remplissez les champs";
                                      } else {
                                        FocusScope.of(context).unfocus();
                                      }
                                    },
                                    decoration: InputDecoration(
                                        hintText: "Entrer votre mot de passe",
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: BorderSide.none,
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          borderSide: const BorderSide(
                                              color: Colors.orange),
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey.withOpacity(0.1),
                                        prefixIcon:
                                            const Icon(Icons.lock_outline),
                                        suffixIcon:
                                            Icon(MdiIcons.eyeOffOutline)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Text("Reminder me next time"),
                              const SizedBox(
                                width: 2,
                              ),
                              Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                  color:
                                      const Color.fromARGB(255, 245, 163, 41),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Center(
                            child: FilledButton(
                                style: FilledButton.styleFrom(
                                    backgroundColor:
                                        Colors.orange.withOpacity(0.7),
                                    fixedSize: const Size(350, 60)),
                                onPressed: () {},
                                child: Text(
                                  "Sign in".toUpperCase(),
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't have account ?"),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SignupPage()));
                                  },
                                  child: Text(
                                    "Sign up",
                                    style: TextStyle(color: Colors.orange),
                                  ),
                                )
                              ])
                        ]),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
