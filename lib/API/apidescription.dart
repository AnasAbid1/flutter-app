import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tts06c1/API/api_services.dart';

class DescriptionScreen extends StatefulWidget {
  const DescriptionScreen({super.key, required this.movieID});

  final String movieID;

  @override
  State<DescriptionScreen> createState() => _DescriptionScreenState();
}

class _DescriptionScreenState extends State<DescriptionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movieID),
      ),
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: FutureBuilder(
            future: MyServices.fetchDescription(widget.movieID),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {

                Map map = jsonDecode(snapshot.data);
                String movieDescription = map["tvShow"]["description"];
                List movieGenres = map["tvShow"]["genres"];
                return Column(
                  children: [
                    Container(
                      width: double.infinity,
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(movieDescription),
                    ),
                    ListView.builder(
                      itemCount: movieGenres.length,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                      return Text(movieGenres[index]);
                    },)
                  ],
                );
              } else if (snapshot.hasError) {
                return Icon(Icons.error_outline);
              } else {
                return CircularProgressIndicator();
              }
            }),
      ),
    );
  }
}
