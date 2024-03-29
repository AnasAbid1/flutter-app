import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tts06c1/API/api_services.dart';
import 'package:tts06c1/API/apidescription.dart';

class ApiFetch extends StatefulWidget {
  const ApiFetch({super.key});

  @override
  State<ApiFetch> createState() => _ApiFetchState();
}

class _ApiFetchState extends State<ApiFetch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: MyServices.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }

          if (snapshot.hasData) {
            // 1. Json Decode - > Map
            Map map = jsonDecode(snapshot.data);
            String total = map["total"];
            List myData = map["tv_shows"];

            return ListView.builder(
              itemCount: myData.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DescriptionScreen(movieID: "${myData[index]["id"]}"),));

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                            "Movie Name: ${myData[index]["name"]} || MovieID: ${myData[index]["id"]}")));
                  },
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          "${myData[index]["image_thumbnail_path"]}"),
                    ),
                    title: Text("${myData[index]["name"]}"),
                    subtitle: Text("${myData[index]["network"]}"),
                  ),
                );
              },
            );
          }

          if (snapshot.hasError) {
            return Icon(
              Icons.error,
              color: Colors.red,
            );
          }

          return Container();
        },
      ),
    );
  }
}
