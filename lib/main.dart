import 'package:flutter/material.dart';
import 'package:news_app/component/drawer.dart';
import 'package:news_app/screen/bookmark.dart';
import 'package:news_app/helper.dart';
import 'package:news_app/modal.dart';
import 'package:news_app/screen/newsdetail.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const homepage(),
        'detailPage': (context) => const newsDetailPage(),
        'bookmark': (context) => const bookmarkpage(),
      },
    ),
  );
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  bool isBusiness = true;
  bool isPolitics = false;
  bool isHealth = false;
  bool isTechnology = false;
  bool isSport = false;
  bool isEntertainment = false;

  String category = "business";
  String API =
      "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=ef019968bc8b4c04970d21485130fbc4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grand News'),
        centerTitle: true,
        backgroundColor: const Color(0xff0a1c4e),
        leading: IconButton(
          onPressed: () {
          },
          icon: const Icon(Icons.menu_rounded),
        ),
        elevation: 0,
      ),
      backgroundColor: const Color(0xff0a1c4e),
      body: Column(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(width: 15),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBusiness = true;
                          isPolitics = false;

                          isHealth = false;
                          isTechnology = false;
                          isSport = false;
                          isEntertainment = false;

                          category = 'business';
                          API =
                              "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (isBusiness) ? Colors.white : Colors.blueGrey,
                        ),
                        child: Icon(
                          Icons.business_center_sharp,
                          size: 27,
                          color: (isBusiness) ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Business',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBusiness = false;
                          isPolitics = true;

                          isHealth = false;
                          isTechnology = false;
                          isSport = false;
                          isEntertainment = false;
                          category = 'politics';
                          API =
                              "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (isPolitics) ? Colors.white : Colors.blueGrey,
                        ),
                        child: Icon(
                          Icons.back_hand_outlined,
                          size: 27,
                          color: (isPolitics) ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Politics',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBusiness = false;
                          isPolitics = false;

                          isHealth = false;
                          isTechnology = true;
                          isSport = false;
                          isEntertainment = false;
                          category = 'technology';
                          API =
                              "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color:
                              (isTechnology) ? Colors.white : Colors.blueGrey,
                        ),
                        child: Icon(Icons.military_tech_rounded,
                            size: 27,
                            color:
                                (isTechnology) ? Colors.black : Colors.white),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Technology',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBusiness = false;
                          isPolitics = false;

                          isHealth = true;
                          isTechnology = false;
                          isSport = false;
                          isEntertainment = false;
                          category = 'health';
                          API =
                              "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (isHealth) ? Colors.white : Colors.blueGrey,
                        ),
                        child: Icon(Icons.health_and_safety_outlined,
                            size: 27,
                            color: (isHealth) ? Colors.black : Colors.white),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Health',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(width: 15),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBusiness = false;
                          isPolitics = false;

                          isHealth = false;
                          isTechnology = false;
                          isSport = true;
                          isEntertainment = false;
                          category = 'sport';
                          API =
                              "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (isSport) ? Colors.white : Colors.blueGrey,
                        ),
                        child: Icon(
                          Icons.sports_volleyball,
                          size: 27,
                          color: (isSport) ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Sport',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(width: 10),
                Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isBusiness = false;
                          isPolitics = false;

                          isHealth = false;
                          isTechnology = false;
                          isSport = false;
                          isEntertainment = true;
                          category = 'entertainment';
                          API =
                              "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                        });
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: (isEntertainment)
                              ? Colors.white
                              : Colors.blueGrey,
                        ),
                        child: Icon(
                          Icons.multitrack_audio_sharp,
                          size: 27,
                          color:
                              (isEntertainment) ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      'Entertainment',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
                const SizedBox(width: 10),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: FutureBuilder(
              future: NewsAPI.newsAPI.fetchNewsData(API: API),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Center(
                    child: Text("Eroor:${snapshot.error}"),
                  );
                } else if (snapshot.hasData) {
                  List<NewsData>? data = snapshot.data;

                  return ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: data!.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          NewsData? res = data[index];

                          Navigator.pushNamed(context, 'detailPage',
                              arguments: res);
                        },
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 10),
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
                                        image: NetworkImage(data[index].image),
                                        fit: BoxFit.cover)),
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    height: 55,
                                    width: 172,
                                    child: Text(
                                      data[index].title,
                                      style: const TextStyle(fontSize: 15),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  SizedBox(
                                    height: 20,
                                    width: 172,
                                    child: Text(
                                      '- ${data[index].source}',
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
                  );
                }

                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: const Color(0xff091f59),
        height: 60,
        child: Row(
          children: [
            const SizedBox(width: 15),
            Container(
              height: 35,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.white)),
              child: Row(
                children: const [
                  SizedBox(width: 5),
                  Icon(
                    Icons.home,
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8),
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                  SizedBox(width: 8),
                ],
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'bookmark');
              },
              icon: const Icon(
                Icons.bookmark_add_outlined,
                size: 25,
                color: Colors.white,
              ),
            ),
            const SizedBox(width: 12),
            Container(
              height: 35,
              width: 35,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
                      fit: BoxFit.cover)),
            ),
            const SizedBox(
              width: 15,
            )
          ],
        ),
      ),
      drawer: const drawer(),
    );
  }
}
