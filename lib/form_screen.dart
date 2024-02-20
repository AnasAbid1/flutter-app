import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          const SizedBox(
            height: 20,
          ),

          const Center(child: Text("Register Screen"),),

          const SizedBox(
            height: 20,
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                label: Text("Enter Your Name"),
                hintText: "John Doe",
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black,width: 4)
                )
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: TextFormField(
              decoration: const InputDecoration(
                  label: Text("Enter Your Email"),
                  hintText: "johndoe@gmail.com",
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,width: 4)
                  )
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: TextFormField(
              obscureText: true,
              obscuringCharacter: '-',
              decoration: const InputDecoration(
                  label: Text("Enter Your Password"),
                  hintText: "Joh****n3",
                  prefixIcon: Icon(Icons.key),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black,width: 4)
                  )
              ),
            ),
          ),

          ElevatedButton(
              onPressed: (){},
              child: Text("Register")),


          const SizedBox(
            height: 20,
          ),

          OutlinedButton(onPressed: (){}, child: Text("Login"))

        ],
      )
    );
  }
}

