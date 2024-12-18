import 'package:flutter/material.dart';

class Commingsoonwidget extends StatelessWidget {
  Commingsoonwidget({super.key});

  List<String> movies = [
    "Ant Man 3",
    "Aquaman 2",
    "GOTG Vol 3",
    "Shazam 2",
  ];

  List<String> images = [
    "assets/Ant Man 3.jpg", 
    "assets/Aquaman 2.jpg",
    "assets/GOTG Vol 3.jpg",
    "assets/Shazam 2.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          for (int i = 0; i < movies.length; i++) ...[
            InkWell(
              onTap: () {
                
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      images[i], 
                      width: 100,
                      height: 160,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movies[i], // Dynamically select title
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      

                    ],
                  ),
                ],
              ),
            ),
            if (i < movies.length - 1) SizedBox(width: 20), // Add spacing between cards
          ],
        ],
      ),
    );
  }
}
