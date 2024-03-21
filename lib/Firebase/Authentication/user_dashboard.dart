import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tts06c1/Firebase/Authentication/login_screen.dart';
import 'package:uuid/uuid.dart';


class UserDashBoard extends StatefulWidget {
  const UserDashBoard({super.key});

  @override
  State<UserDashBoard> createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {

  void userLogout()async{
    await FirebaseAuth.instance.signOut();
    SharedPreferences userLogged = await SharedPreferences.getInstance();
    userLogged.clear();
    if(context.mounted){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
    }
  }

  void userDelete()async{
    try{
      FirebaseAuth.instance.signOut();
      FirebaseAuth.instance.currentUser!.delete();
      SharedPreferences userLogged = await SharedPreferences.getInstance();
      userLogged.clear();
      if(context.mounted){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
      }

    } on FirebaseAuthException catch(e){
      if(context.mounted){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code.toString())));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${FirebaseAuth.instance.currentUser!.email}"),
        actions: [
          IconButton(onPressed: (){
            userLogout();
          }, icon: const Icon(Icons.logout)),
          IconButton(onPressed: (){
            userDelete();
          }, icon: const Icon(Icons.delete,color: Colors.red,))
        ],
        automaticallyImplyLeading: false,
      ),
      body: ListTile(
        title: const Text("Sharaz"),
        subtitle: const Text("sharaz@gmail.com"),
        trailing: SizedBox(
          width: 140,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.update)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.red,)),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        showModalBottomSheet(context: context, builder: (context) {

          final TextEditingController userName = TextEditingController();
          final TextEditingController userEmail = TextEditingController();

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 10,),

                const Text("Add New User",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 16),),

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


                  // Automatic ID Generate By firebase Firestore
                  // await FirebaseFirestore.instance.collection("userData").add({
                  //   "userName" : userName.text,
                  //   "userEmail" : userEmail.text
                  // });

                  //Customer ID
                  var userID = const Uuid().v1();
                  await FirebaseFirestore.instance.collection("userData").doc(userID).set({
                    "userID" : userID,
                    "userName" : userName.text,
                    "userEmail" : userEmail.text
                  });

                  if(context.mounted){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("user Added successfully")));
                    Navigator.pop(context);
                  }

                }, child: const Text("Add User"))

              ],
            ),
          );
        },);
      },
          backgroundColor: Colors.green,
          child: const Center(
            child: Icon(Icons.add,color: Colors.white,),)),
    );
  }
}
