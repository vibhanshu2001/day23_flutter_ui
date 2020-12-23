import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_day23/cookie_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
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
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: Text(
          "Pickup",
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        actions: [
          Icon(
            Icons.notifications_outlined,
            color: Color.fromRGBO(242, 117, 35, 1),
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
              "Categories",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: Color.fromRGBO(242, 117, 35, 1),
              indicatorColor: Color.fromRGBO(242, 117, 35, 1),
              tabs: [
                Tab(
                  text: 'Cookies',
                ),
                Tab(
                  text: 'Cookie Cake',
                ),
                Tab(
                  text: 'Ice Cream',
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (_)=>CookiePage()));
                      },
                      child: Container(
                        height: 250,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(color: Colors.grey[300], blurRadius: 5),
                            ]),
                        child: Column(
                          children: [
                            Align(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal:7,vertical: 3),
                                child: Icon(
                                  Icons.favorite_outline,
                                ),
                              ),
                              alignment: Alignment.topRight,
                            ),
                            Image(
                              image: AssetImage("assets/images/cookiemint.jpg"),
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "\$3.99",
                              style: TextStyle(
                                  color: Color.fromRGBO(242, 117, 35, 1),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Cookie Mint",
                              style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.shopping_bag,
                                  color: Color.fromRGBO(242, 117, 35, 1),
                                ),
                                Text(
                                  "Add to Cart",
                                  style: TextStyle(
                                      color: Color.fromRGBO(242, 117, 35, 1),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey[300], blurRadius: 5),
                          ]),
                      child: Column(
                        children: [
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:7,vertical: 3),
                              child: Icon(
                                Icons.favorite_outline,
                              ),
                            ),
                            alignment: Alignment.topRight,
                          ),
                          Image(
                            image: AssetImage("assets/images/cookiecream.jpg"),
                            height: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$5.99",
                            style: TextStyle(
                                color: Color.fromRGBO(242, 117, 35, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Cookie Cream",
                            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_bag,
                                color: Color.fromRGBO(242, 117, 35, 1),
                              ),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color: Color.fromRGBO(242, 117, 35, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey[300], blurRadius: 5),
                          ]),
                      child: Column(
                        children: [
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:7,vertical: 3),
                              child: Icon(
                                Icons.favorite_outline,
                              ),
                            ),
                            alignment: Alignment.topRight,
                          ),
                          Image(
                            image: AssetImage("assets/images/cookieclassic.jpg"),
                            height: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$1.99",
                            style: TextStyle(
                                color: Color.fromRGBO(242, 117, 35, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Cookie Classic",
                            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_bag,
                                color: Color.fromRGBO(242, 117, 35, 1),
                              ),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color: Color.fromRGBO(242, 117, 35, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      height: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(color: Colors.grey[300], blurRadius: 5),
                          ]),
                      child: Column(
                        children: [
                          Align(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal:7,vertical: 3),
                              child: Icon(
                                Icons.favorite_outline,
                              ),
                            ),
                            alignment: Alignment.topRight,
                          ),
                          Image(
                            image: AssetImage("assets/images/cookiechoco.jpg"),
                            height: 100,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$2.99",
                            style: TextStyle(
                                color: Color.fromRGBO(242, 117, 35, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Text(
                            "Cookie Choco",
                            style: TextStyle(color: Colors.black, fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Divider(
                            color: Colors.grey,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shopping_bag,
                                color: Color.fromRGBO(242, 117, 35, 1),
                              ),
                              Text(
                                "Add to Cart",
                                style: TextStyle(
                                    color: Color.fromRGBO(242, 117, 35, 1),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
