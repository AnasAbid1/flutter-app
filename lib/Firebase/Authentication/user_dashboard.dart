import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tts06c1/Firebase/Authentication/login_screen.dart';


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
    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
  }

  void userDelete()async{
    try{
      FirebaseAuth.instance.signOut();
      FirebaseAuth.instance.currentUser!.delete();
      SharedPreferences userLogged = await SharedPreferences.getInstance();
      userLogged.clear();
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
    } on FirebaseAuthException catch(e){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.code.toString())));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("${FirebaseAuth.instance.currentUser!.email}"),
            ElevatedButton(onPressed: (){
              userLogout();
            }, child: Text("LogOut")),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: (){
              userDelete();
            }, child: Text("LogOut & Delete Account"))
          ],
        ),
      ),
    );
  }
}
