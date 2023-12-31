import 'package:skool_ar/screens/ar_viewer.dart';
import 'package:flutter/material.dart';

class ContentView extends StatelessWidget {
  final String? img;
  final String? src;
  final String? title;
  final String? content;
  const ContentView(
      {Key? key,
      required this.src,
      required this.img,
      required this.title,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (() {}),
        backgroundColor: Colors.white,
        child: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => ARViewer(
                        alt: "",
                        src: src,
                        title: title,
                      )))),
          child: const Icon(
            Icons.view_in_ar_rounded,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
            child: Hero(tag: src!, child: Image.asset(img!))),
        const SizedBox(
          height: 5,
        ),
        Text(
          title!,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Text(content!,
              style: const TextStyle(
                fontSize: 16,
              ),
              textAlign: TextAlign.justify),
        ),
      ])),
    );
  }
}
