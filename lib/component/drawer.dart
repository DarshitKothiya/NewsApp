import 'package:flutter/material.dart';

class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.of(context).pop();
          },
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black26,
          ),
        ),
        SizedBox(
          width: 270,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 220,
                padding: EdgeInsets.symmetric(horizontal: 15),
                width: double.infinity,
                color:  const Color(0xff0a1c4e),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Spacer(flex: 2,),
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80'),
                    ),
                    SizedBox(height: 15),
                    Text('Darshit Kothiya',style: TextStyle(fontSize: 18,color: Colors.white),),
                    SizedBox(height: 5),
                    Text('+91 7874764505',style: TextStyle(fontSize: 12,color: Colors.white60),),
                    Spacer(),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  width: 270,
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.people,color: Colors.blueGrey,size: 27,),
                          SizedBox(width: 20),
                          Text('People',style: TextStyle(color: Colors.blueGrey,fontSize: 16),),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.category,color: Colors.blueGrey,size: 27,),
                          SizedBox(width: 20),
                          Text('Category',style: TextStyle(color: Colors.blueGrey,fontSize: 16),),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.call,color: Colors.blueGrey,size: 27,),
                          SizedBox(width: 20),
                          Text('calls',style: TextStyle(color: Colors.blueGrey,fontSize: 16),),

                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.bookmark_border,color: Colors.blueGrey,size: 27,),
                          SizedBox(width: 20),
                          Text('Saved News',style: TextStyle(color: Colors.blueGrey,fontSize: 16),),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Row(
                        children: const [
                          Icon(Icons.settings,color: Colors.blueGrey,size: 27,),
                          SizedBox(width: 20),
                          Text('Settings',style: TextStyle(color: Colors.blueGrey,fontSize: 16),),
                        ],
                      ),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
