import 'package:flutter/material.dart';
import 'package:profile_page/widgets/about_cardwidget.dart';

class Aboutpage extends StatelessWidget {
  const Aboutpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 75,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(22),
                  bottomRight: Radius.circular(22),
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                    Text(
                      "About",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Hello,I'm Muhammad Abdullah 👋",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Text(
                        "I am a passionate Flutter developer experienced in building user-friendly mobile apps with Firebase integration. I have developed several educational projects, gaining skills in UI design, API integration, and performance optimization. Always eager to learn, I continue exploring Flutter, Firebase, and modern app development.",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "📍 Punjab, Pakistan",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "📞 Available for work",
                            style: TextStyle(color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Let's Connect",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Get in touch for Collaboration",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ),

            aboutCard(
              'Email',
              'abdullahrajpoot2476@gmail.com',
              Colors.pink,
              Icons.email,
            ),
            aboutCard('Phone', '0325xxxxx25', Colors.green, Icons.phone),
            aboutCard(
              'Linkdin',
              'Muhammad abdullah',
              const Color.fromARGB(255, 15, 86, 145),
              Icons.business_center,
            ),
            aboutCard(
              'GitHub',
              'abdullah2476',
              Colors.black,
              Icons.developer_mode,
            ),
          ],
        ),
      ),
    );
  }
}
