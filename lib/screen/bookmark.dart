import 'package:flutter/material.dart';
import 'package:news_app/modal.dart';

class bookmarkpage extends StatefulWidget {
  const bookmarkpage({Key? key}) : super(key: key);

  @override
  State<bookmarkpage> createState() => _bookmarkpageState();
}

class _bookmarkpageState extends State<bookmarkpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0a1c4e),
        elevation: 0,
        title: Text("Bookmark News"),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      backgroundColor: const Color(0xff0a1c4e),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: Modal.bookmarkNews.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              NewsData? res = Modal.bookmarkNews[index];

              Navigator.pushNamed(context, 'detailPage', arguments: res);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff9b9fb2)),
              child: Row(
                children: [
                  Container(
                    height: 100,
                    width: 150,
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image:
                                NetworkImage(Modal.bookmarkNews[index].image),
                            fit: BoxFit.cover)),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 55,
                        width: 172,
                        child: Text(
                          Modal.bookmarkNews[index].title,
                          style: const TextStyle(fontSize: 15),
                        ),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        height: 20,
                        width: 172,
                        child: Text(
                          '- ${Modal.bookmarkNews[index].source}',
                          style: TextStyle(
                              color: Colors.red.withOpacity(0.95),
                              fontSize: 15),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
