import 'package:flutter/material.dart';
import 'package:flutter_task3/home_screen/widget/commingSoonWidget.dart';
import 'package:flutter_task3/home_screen/widget/playingNowScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xff212429),
          leading: Icon(
            Icons.sort,
            color: Colors.white,
          ),
          title: Text(
            "DP Cineplex",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.filter_alt_outlined,
                      color: Colors.white,
                    )
                  ],
                )),
          ]),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Playing Now",
                      style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),),
              Text("View All",
                style: TextStyle(
                color: Colors.amber,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),)
                    ],
                  ),
                ),
                 SizedBox(height: 10,),
              Playingnowscreen(),
              SizedBox(height: 25,),
               Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 66, 66, 66)
                        ),
                        child:Text("COMMING SOON",
                      style: TextStyle(
                color: Colors.white60,
                fontSize: 20,
              ),),
                      ),
                       Text("View All",
                style: TextStyle(
                color: Colors.amber,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),) ,
                      
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Commingsoonwidget(),
              ],
            ),
          ),
    );
  }
}
