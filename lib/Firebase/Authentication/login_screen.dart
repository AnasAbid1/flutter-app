import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tts06c1/Firebase/Authentication/register_screen.dart';
import 'package:tts06c1/Firebase/Authentication/user_dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  final TextEditingController userEmail = TextEditingController();
  final TextEditingController userPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isHide = true;

  void userRegister()async{
    try{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: userEmail.text,
          password: userPassword.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("SuccessFully")));
      Navigator.push(context, MaterialPageRoute(builder: (context) => UserDashBoard(),));
    } on FirebaseAuthException catch(ex){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.code.toString())));
    }
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
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  controller: userEmail,
                  validator: (value) {
                    if (value == null || value.isEmpty || value == " ") {
                      return "Please Enter Your Email";
                    } else {
                      return null;
                    }
                  },
                  decoration: const InputDecoration(
                      label: Text("Enter Your Email"),
                      hintText: "johndoe@gmail.com",
                      prefixIcon: Icon(Icons.email),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 4))),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextFormField(
                  controller: userPassword,
                  obscureText: isHide == true ? true : false,
                  obscuringCharacter: '-',
                  validator: (value) {
                    if (value == null || value.isEmpty || value == " ") {
                      return "Please Enter Your Password";
                    }
                    if (value.length < 6) {
                      return "Password must be of 6 Digits or more";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                      label: const Text("Enter Your Password"),
                      hintText: "Joh****n3",
                      prefixIcon: const Icon(Icons.key),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              isHide = !isHide;
                            });
                          },
                          icon: isHide == true
                              ? const Icon(Icons.remove_red_eye)
                              : const Icon(Icons.panorama_fish_eye)),
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 4))),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),));
                  },
                  child: const Text("Register")),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(onPressed: () {
                userRegister();

              }, child: const Text("Login"))
            ],
          ),
        ));
  }
}
