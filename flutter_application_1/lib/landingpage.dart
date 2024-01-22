import 'package:flutter/material.dart';
import 'homepage.dart'; // Import the HomePage widget
import 'aboutme.dart'; // Import other pages as needed
import 'my_services.dart';
import 'my_portfolio.dart';
import 'contact_me.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int selectedIndex = 0;

  final List<Widget> pages = [
    HomePage(),
    const AboutMe(),
    const MyServices(),
    const MyPortfolio(),
    const ContactMe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              color: Colors
                  .black, // Choose the color you want for the navigation bar
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Portfolio',
                      style: TextStyle(fontSize: 18, color: Colors.white)),
                  Spacer(),
                  for (int i = 1; i <= 4; i++)
                    InkWell(
                      onTap: () {
                        setState(() {
                          selectedIndex = i;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        color: selectedIndex == i
                            ? Colors.grey
                            : Colors.transparent,
                        child: Text(
                          getMenuTitle(i),
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            for (int i = 0; i < pages.length; i++)
              Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: pages[i],
              ),
          ],
        ),
      ),
    );
  }

  String getMenuTitle(int index) {
    switch (index) {
      case 1:
        return 'About';
      case 2:
        return 'Services';
      case 3:
        return 'Portfolio';
      case 4:
        return 'Contact';
      default:
        return 'Home';
    }
  }
}
