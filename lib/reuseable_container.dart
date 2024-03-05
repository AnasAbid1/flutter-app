import 'package:flutter/material.dart';


class ReuseableContainer extends StatelessWidget {
  const ReuseableContainer({
    super.key,
    this.containerText,
    required this.imgUrl,
    required this.containerColor
  });
  final String? containerText;
  final String imgUrl;
  final Color containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: double.infinity,
      height: 160,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: containerColor,
          image: DecorationImage(image: NetworkImage(imgUrl))
      ),
      child: containerText == null ? const Text('') : Text(containerText!),
    );
  }
}


class MyProfileContainer extends StatelessWidget {
  const MyProfileContainer({
    super.key,
    required this.name,
    required this.email,
    required this.coverPhoto,
    required this.profilePic,
  });

  final String? name;
  final String? email;
  final String? coverPhoto;
  final String? profilePic;

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [

        // Background Support
        const SizedBox(
          width: double.infinity,
          height: 184,

        ),

        // Cover photo
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.grey.shade400,
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(coverPhoto!))
          ),
        ),

        // Profile Pic
        Positioned(
          left: 24,
          top: 80,
          child: CircleAvatar(
            radius: 50,
            backgroundColor: Colors.grey,
            backgroundImage: NetworkImage(profilePic!),
          ),
        ),

        Positioned(
          left: 130,
          top: 130,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name!,style: const TextStyle(fontWeight: FontWeight.w600,fontSize: 16),),
              Text(email!,style: const TextStyle(fontWeight: FontWeight.w400,fontSize: 14),)
            ],
          ),
        )

      ],
    );
  }
}
