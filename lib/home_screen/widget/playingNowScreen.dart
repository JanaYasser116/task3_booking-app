import 'package:flutter/material.dart';
import 'package:flutter_task3/booking_screen/bookingScreen.dart';

class Playingnowscreen extends StatelessWidget {
  Playingnowscreen({super.key});

  List<String> movies = [
    "Ant Man 3",
    "Aquaman 2",
    "GOTG Vol 3",
    "Shazam 2",
  ];

  List<String> images = [
    "assets/Ant Man 3.jpg", // Replace with the correct paths to your images
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BookingScreen()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      images[i], // Dynamically select image
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
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Text(
                            "8.3", // You can also add a dynamic rating list
                            style: TextStyle(
                              color: Colors.amber,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time_rounded,
                            color: Colors.white60,
                            size: 15,
                          ),
                          SizedBox(height: 8),
                          Text(
                            "2h 20min", // You can also add a dynamic rating list
                            style:
                                TextStyle(color: Colors.white60, fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            if (i < movies.length - 1)
              SizedBox(width: 20), // Add spacing between cards
          ],
        ],
      ),
    );
  }
}
