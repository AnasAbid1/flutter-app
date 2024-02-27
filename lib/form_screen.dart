import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tts06c1/login_screen.dart';
import 'package:tts06c1/main.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
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
            child: Text("Register Screen"),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              controller: userName,
              validator: (value) {
                if (value == null || value.isEmpty || value == " ") {
                  return "Please Enter Your Name";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  label: Text("Enter Your Name"),
                  hintText: "John Doe",
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 4))),
            ),
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
              maxLength: 11, // Display
              inputFormatters: [LengthLimitingTextInputFormatter(11)],
              controller: userPhone,
              validator: (value) {
                if (value == null || value.isEmpty || value == " ") {
                  return "Please Enter Your Phone Number";
                }
                if (value.length < 11) {
                  return "Phone Number must be of 11 digits";
                } else {
                  return null;
                }
              },
              decoration: const InputDecoration(
                  label: Text("Enter Your PhoneNumber"),
                  hintText: "24557496434",
                  prefixIcon: Icon(Icons.phone),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 4))),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextFormField(
              controller: userPass,
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
                  debugPrint(userName.text);
                  debugPrint(userEmail.text);
                  debugPrint(userPass.text);
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("User Registered as: ${userName.text}"),
                      behavior: SnackBarBehavior.floating,
                        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                        backgroundColor: Colors.green,

                      ));
                  userName.clear();
                  userEmail.clear();
                  userPass.clear();
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MyHome(),));
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
    ));
  }
}
