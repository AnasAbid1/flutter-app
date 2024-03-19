import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:tts06c1/Firebase/Authentication/login_screen.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  final TextEditingController userEmail = TextEditingController();
  final TextEditingController userPassword = TextEditingController();

  final formKey = GlobalKey<FormState>();

  bool isHide = true;


  void userRegister()async{
    try{
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: userEmail.text,
          password: userPassword.text);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Register SuccessFully")));
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));

    } on FirebaseAuthException catch(ex){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(ex.code.toString())));
    }
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Scaffold(
          body: Form(
            key: formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Center(
                  child: Text("Register Screen"),
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
                      if (formKey.currentState!.validate()) {
                        userRegister();
                      }
                    },
                    child: const Text("Register")),
                const SizedBox(
                  height: 20,
                ),
                OutlinedButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                }, child: const Text("Login"))
              ],
            ),
          )),
    );
  }
}
