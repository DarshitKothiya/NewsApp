import 'package:flutter/material.dart';

import '../modal.dart';

class newsDetailPage extends StatefulWidget {
  const newsDetailPage({Key? key}) : super(key: key);

  @override
  State<newsDetailPage> createState() => _newsDetailPageState();
}

class _newsDetailPageState extends State<newsDetailPage> {
  @override
  Widget build(BuildContext context) {
    NewsData? res = ModalRoute.of(context)!.settings.arguments as NewsData?;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(res!.source),
        centerTitle: true,
        backgroundColor: const Color(0xff0a1c4e),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                Modal.bookmarkNews.add(res);
              });
            },
            icon: const Icon(Icons.bookmark_add_outlined),
          ),
        ],
      ),
      backgroundColor: const Color(0xff0a1c4e),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 650,
          padding: EdgeInsets.all(5),
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: const Color(0xff9b9fb2)),
          child: Column(
            children: [
              Container(
                height: 270,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    image: DecorationImage(
                        image: NetworkImage(res.image), fit: BoxFit.cover)),
              ),
              const SizedBox(height: 10),
              Text(
                "Author - ${res.author}",
                style: TextStyle(fontSize: 17),
              ),
              const SizedBox(height: 20),
              Text(
                res.description,
                style:
                    const TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10),
              Text(
                res.content,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
              )
            ],
          ),
        ),
      ),
    );
  }
}
