import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key, required this.userID, required this.userName, required this.userEmail});

  final String userID;
  final String userName;
  final String userEmail;

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {

  final TextEditingController userName = TextEditingController();
  final TextEditingController userEmail = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState

    // Controller :    Screen

    userName.text = widget.userName;
    userEmail.text = widget.userEmail;
    super.initState();
  }

  void updateUser()async{
    await FirebaseFirestore.instance.collection("userData").doc(widget.userID).update(
        {
          "userName" : userName.text,
          "userEmail" : userEmail.text
        });
    if(context.mounted){
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("user updated successfully")));
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 10,),

            const Text("Update User",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16),),

            const SizedBox(height: 40,),

            TextFormField(
              controller: userName,
              decoration: const InputDecoration(
                  hintText: "Enter Your Name",
                  prefixIcon: Icon(Icons.person)
              ),
            ),

            const SizedBox(height: 10,),

            TextFormField(
              controller: userEmail,
              decoration: const InputDecoration(
                  hintText: "Enter Your Email",
                  prefixIcon: Icon(Icons.email)
              ),
            ),

            const SizedBox(height: 20,),

            ElevatedButton(onPressed: ()async{



              if(context.mounted){
                updateUser();
              }

            }, child: const Text("Update User"))

          ],
        ),
      ),
    );
  }
}
