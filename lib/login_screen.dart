import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tts06c1/form_screen.dart';
import 'package:tts06c1/main.dart';
import 'package:tts06c1/reuseable_forms.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isHide = true;

  TextEditingController userName = TextEditingController();
  TextEditingController userEmail = TextEditingController();
  TextEditingController userPass = TextEditingController();
  TextEditingController userPhone = TextEditingController();

  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    // TODO: implement dispose
    userName.dispose();
    userEmail.dispose();
    userPass.dispose();
    userPhone.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text("Login Screen"),
              ),
              const SizedBox(
                height: 20,
              ),
              TayyabForm(
                tayyabLabel: "Enter Your Email",
                tayyabHintText: "joh@gmail.com",
                tayyabFormError: "Email is Required",
                tayyabController: userEmail,
                tayyabFormIcon: Icon(Icons.email),
              ),
              TayyabForm(
                tayyabLabel: "Enter Your Password",
                tayyabHintText: "asj^sdjkhf",
                tayyabFormError: "Password is Required",
                tayyabController: userPass,
                tayyabFormIcon: Icon(Icons.key),
              ),

              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const FormScreen(),));
                  },
                  child: const Text("Register")),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(onPressed: () {
                if (formKey.currentState!.validate()) {
                  debugPrint(userEmail.text);
                  debugPrint(userPass.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("User LoggedIn as: ${userEmail.text}"),
                        behavior: SnackBarBehavior.floating,
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        backgroundColor: Colors.green,

                      ));
                  userEmail.clear();
                  userPass.clear();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyHome(),));
                }
              }, child: const Text("Login"))
            ],
          ),
        ));
  }
}


