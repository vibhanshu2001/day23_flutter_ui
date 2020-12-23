import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CookiePage extends StatefulWidget {
  @override
  _CookiePageState createState() => _CookiePageState();
}

class _CookiePageState extends State<CookiePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = new TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 245, 243, 1),
      bottomNavigationBar: CurvedNavigationBar(
        height: 75,
        backgroundColor: Color.fromRGBO(246, 245, 243, 1),
        items: <Widget>[
          Icon(
            Icons.home_outlined,
            size: 30,
            color: Color.fromRGBO(242, 117, 35, 1),
          ),
          Icon(
            Icons.verified_user_outlined,
            size: 30,
            color: Color.fromRGBO(242, 117, 35, 1),
          ),
          Icon(
            Icons.verified_user,
            size: 30,
            color: Color.fromRGBO(242, 117, 35, 1),
          ),
          Icon(
            Icons.search_rounded,
            size: 30,
            color: Color.fromRGBO(242, 117, 35, 1),
          ),
          Icon(
            Icons.shopping_bag,
            size: 30,
            color: Color.fromRGBO(242, 117, 35, 1),
          ),
        ],
        onTap: (index) {},
      ),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(246, 245, 243, 1),
        leading: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Pickup",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: Color.fromRGBO(242, 117, 35, 1),
            size: 30,
          ),
          SizedBox(
            width: 10,
          ),
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Cookie",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(242, 117, 35, 1)),
            ),
            SizedBox(height: 15,),
            Image(image: AssetImage("assets/images/cookiemint.jpg")),
            Container(height: 10,color: Colors.white,),
            Container(
              height: 320,
              width: double.infinity,
              color: Colors.white,
              child: Align(
                child: Column(
                  children: [
                    Text(
                      "\$3.99",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                          color: Color.fromRGBO(242, 117, 35, 1)
                      ),
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Cookie Mint",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          color: Color.fromRGBO(0, 0, 0, 1)
                      ),
                    ),
                    SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        "Cold, creamy ice cream sandwiched between delicious deluxe cookies. Pick your favorite deluxe cookies and ice cream flavour.",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 70,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(242, 117, 35, 1),
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: Center(
                          child: Text(
                            "Add to Cart",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                alignment: Alignment.topCenter,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
