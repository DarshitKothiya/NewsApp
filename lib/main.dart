import 'package:flutter/material.dart';
import 'package:news_app/helper.dart';
import 'package:news_app/modal.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homepage(),
    ),
  );
}



class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {

  String category= "business";
  String API="https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=ef019968bc8b4c04970d21485130fbc4";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 230,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: const BoxDecoration(
              color: Colors.blueGrey,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 1,
                  blurRadius: 3
                )
              ],
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25)
              )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: const DecorationImage(
                          image: NetworkImage("https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80"),
                          fit: BoxFit.cover
                        )
                      ),
                    ),

                    const Spacer(),
                    IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
                  ],
                ),
                const SizedBox(height: 15),
                const Text("Discover Trending And \nLatest News",style: TextStyle(fontSize: 22,color: Colors.white,height: 1.2),),
                const SizedBox(height: 15),
                const Text("Discover your news with us...",style: TextStyle(fontSize: 18,color: Colors.white,height: 1.2),)
              ],
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        category = 'business';
                        API = "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey
                      ),
                      child: Icon(Icons.business_center_sharp,size: 27,color: Colors.white,),
                    ),
                  ),
                  const Text('Business')
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        category = 'politics';
                        API = "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey
                      ),
                      child: Icon(Icons.back_hand_outlined,size: 27,color: Colors.white,),
                    ),
                  ),
                  const Text('Politics')
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        category = 'music';
                        API = "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey
                      ),
                      child: Icon(Icons.music_note,size: 27,color: Colors.white,),
                    ),
                  ),
                  const Text('Music')
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        category = 'health';
                        API = "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey
                      ),
                      child: Icon(Icons.health_and_safety_outlined,size: 27,color: Colors.white,),
                    ),
                  ),
                  const Text('Health')
                ],
              ),
              Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        category = 'technology';
                        API = "https://newsapi.org/v2/top-headlines?country=in&category=$category&apiKey=ef019968bc8b4c04970d21485130fbc4";
                      });
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey
                      ),
                      child: Icon(Icons.military_tech_rounded,size: 27,color: Colors.white,),
                    ),
                  ),
                  const Text('Technology')
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Expanded(
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black,
                          spreadRadius: 1,
                          blurRadius: 3
                      )
                    ]
                ),
                child: FutureBuilder(
                  future: NewsAPI.newsAPI.fetchNewsData(API: API),
                  builder: (context, snapshot){

                    if(snapshot.hasError){
                      return Center(
                        child: Text("Eroor:${snapshot.error}"),
                      );
                    }else if(snapshot.hasData){

                      List<NewsData>? data = snapshot.data;

                      return ListView.builder(
                        itemCount: data!.length,
                        itemBuilder: (context, index){
                          return Container(
                            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(10),
                                        topRight: Radius.circular(10),
                                      ),
                                      image: DecorationImage(
                                          image: NetworkImage(data[index].image),
                                          fit: BoxFit.cover
                                      )
                                  ),
                                ),
                                Container(
                                  height: 50,
                                  padding: EdgeInsets.all(3),
                                  alignment: Alignment.center,
                                  width: double.infinity,
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10),
                                        bottomRight: Radius.circular(10),
                                      )
                                  ),
                                  child: Text(data[index].title),
                                )
                              ],
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
          ),
        ],
      ),
    );
  }
}
