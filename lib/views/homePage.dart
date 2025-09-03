import 'package:flutter/material.dart';
import 'package:profile_page/views/aboutPage.dart';
import 'package:profile_page/views/projectPage.dart';
import 'package:profile_page/widgets/cardwidget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                Container(
                  height: 150,
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
                  child: Align(
                    alignment: Alignment(0, -.5),
                    child: Text(
                      "Personal Profile",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  left: 125,
                  child: Container(
                    height: 100,
                    width: 100,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/abdullahpic.jpg'),
                    ),
                  ),
                ),
              ],
            ),
          ),

          Text(
            "Muhammad Abdullah",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            "Flutter Developer | Software Engineer",
            style: TextStyle(color: Colors.blueGrey),
          ),
          cardWidget(
            Icon(Icons.folder_outlined, color: Colors.blue),
            "Projects",
            'View my Projects',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Projectpage()),
              );
            },
          ),
          cardWidget(
            Icon(Icons.person_3_outlined),
            'About me',
            'My story , Contact info',
            () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Aboutpage()),
              );
            },
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              dot(Color(0xFF6A11CB)),
              Text(
                "   Ready to build something amazing   ",
                style: TextStyle(
                  color: const Color.fromARGB(255, 126, 125, 125),
                  fontSize: 11,
                ),
              ),
              dot(Color(0xFF2575FC)),
            ],
          ),
        ],
      ),
    );
  }
}
