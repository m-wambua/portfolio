import 'package:flutter/material.dart';
import 'homepage.dart';
import 'aboutme.dart';
import 'my_services.dart';
import 'my_portfolio.dart';
import 'contact_me.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _selectedIndex = 0;

  final List<Widget> pages = [
    const HomePage(),
    const AboutMe(),
    const MyServices(),
    const MyPortfolio(),
    ContactMe(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'homepage.dart';
import 'aboutme.dart';
import 'my_services.dart';
import 'my_portfolio.dart';
import 'contact_me.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Portfolio'),
      //   // You can keep the app bar if needed
      // ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomePage(),
          AboutMe(),
          MyServices(),
          MyPortfolio(),
          ContactMe(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Ensure labels are always visible
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
*/

/*import 'package:flutter/material.dart';
import 'homepage.dart';
import 'aboutme.dart';
import 'my_services.dart';
import 'my_portfolio.dart';
import 'contact_me.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  PageController _pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portfolio'),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          HomePage(),
          AboutMe(),
          MyServices(),
          MyPortfolio(),
          ContactMe(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.build),
            label: 'Services',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.work),
            label: 'Portfolio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Contact',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
*/

/*import 'package:flutter/material.dart';
import 'homepage.dart';
import 'aboutme.dart';
import 'my_services.dart';
import 'my_portfolio.dart';
import 'contact_me.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ScrollController _scrollController = ScrollController();
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _onScroll() {
    final index =
        (_scrollController.offset / MediaQuery.of(context).size.height).round();
    if (selectedIndex != index) {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(),
      const AboutMe(),
      const MyServices(),
      const MyPortfolio(),
      const ContactMe(),
    ];

    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollEndNotification ||
              notification is UserScrollNotification) {
            // Handle end of scroll or user-initiated scroll
            // Here, you can add logic to update the selected index based on the scroll position
          }
          return false;
        },
        child: ListView.builder(
          controller: _scrollController,
          itemCount: pages.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return pages[index];
          },
        ),
      ),
    );
  }
}
*/

/*import 'package:flutter/material.dart';
import 'homepage.dart';
import 'aboutme.dart';
import 'my_services.dart';
import 'my_portfolio.dart';
import 'contact_me.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final ItemScrollController _scrollController = ItemScrollController();
  final ItemPositionsListener _itemPositionsListener =
      ItemPositionsListener.create();

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(),
      const AboutMe(),
      const MyServices(),
      const MyPortfolio(),
      const ContactMe(),
    ];

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Portfolio',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
                Spacer(),
                for (int i = 0; i < pages.length; i++)
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = i;
                        _scrollController.scrollTo(
                            index: i, duration: Duration(seconds: 1));
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      color:
                          selectedIndex == i ? Colors.grey : Colors.transparent,
                      child: Text(
                        getMenuTitle(i),
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: ScrollablePositionedList.builder(
              itemCount: pages.length,
              itemScrollController: _scrollController,
              itemPositionsListener: _itemPositionsListener,
              itemBuilder: (context, index) {
                return pages[index];
              },
            ),
          ),
        ],
      ),
    );
  }

  String getMenuTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'About';
      case 2:
        return 'Services';
      case 3:
        return 'Portfolio';
      case 4:
        return 'Contact';
      default:
        return '';
    }
  }
}
*/

/*import 'package:flutter/material.dart';
import 'homepage.dart';
import 'aboutme.dart';
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
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final offset = _scrollController.offset;
    // Adjust these values based on your layout
    final heights = [
      0,
      800,
      1600,
      2400,
      3200
    ]; // Example heights for each section
    int index = 0;

    for (int i = 1; i < heights.length; i++) {
      if (offset < heights[i]) {
        index = i - 1;
        break;
      }
    }

    if (selectedIndex != index) {
      setState(() {
        selectedIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 60,
            color: Colors.black,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Portfolio',
                    style: TextStyle(fontSize: 18, color: Colors.white)),
                Spacer(),
                for (int i = 0; i < pages.length; i++)
                  InkWell(
                    onTap: () {
                      setState(() {
                        selectedIndex = i;
                        _scrollToSection(i);
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      color:
                          selectedIndex == i ? Colors.grey : Colors.transparent,
                      child: Text(
                        getMenuTitle(i),
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              controller: _scrollController,
              children: pages,
            ),
          ),
        ],
      ),
    );
  }

  void _scrollToSection(int index) {
    final heights = [
      0,
      800,
      1600,
      2400,
      3200
    ]; // Example heights for each section
    _scrollController.animateTo(heights[index] as double,
        duration: Duration(milliseconds: 500), curve: Curves.easeInOut);
  }

  String getMenuTitle(int index) {
    switch (index) {
      case 0:
        return 'Home';
      case 1:
        return 'About';
      case 2:
        return 'Services';
      case 3:
        return 'Portfolio';
      case 4:
        return 'Contact';
      default:
        return '';
    }
  }
}
*/

/*import 'package:flutter/material.dart';
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
*/