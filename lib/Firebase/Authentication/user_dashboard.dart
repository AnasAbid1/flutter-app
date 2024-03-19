import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class UserDashBoard extends StatefulWidget {
  const UserDashBoard({super.key});

  @override
  State<UserDashBoard> createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {

  void userLogout()async{
    await FirebaseAuth.instance.signOut();
    Navigator.pop(context);
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
            }, child: Text("LogOut"))
          ],
        ),
      ),
    );
  }
}
