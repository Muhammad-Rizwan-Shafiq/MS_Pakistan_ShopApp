import 'package:flutter/material.dart';
import 'package:shop/screens/chat_screen.dart';
import 'package:shop/utils/constants.dart';

class Package extends StatefulWidget {
  @override
  _PackageState createState() => _PackageState();
}

class _PackageState extends State<Package> {

  List things=[
    {
      "img":"assets/images/shirt3.png",
      "content":"5 T-Shirts Dry and Cleaning",
      "description":"You will get \$10 off buy this Package",
      "price":"\$60"
    },
    {
      "img":"assets/images/shirt.png",
      "content":"Shirt Jeans slip Dry and Cleaning",
      "description":"You will get \$10 off buy this Package",
      "price":"\$40"
    },
    {
      "img":"assets/images/pant.png",
      "content":"5 Jeans Dry and Cleaning",
      "description":"You will get \$20 off buy this Package",
      "price":"\$80"
    }
  ];

  @override
  Widget build(BuildContext context) {
    final _height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).padding.top -
        kToolbarHeight;
    final _width = MediaQuery.of(context).size.width;
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        title: Text(
          "Package",
          style: TextStyle(
              fontFamily: "Poppins", color: black, fontWeight: FontWeight.w700),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        iconTheme: IconThemeData(color: black),
        bottom: PreferredSize(
          child: Padding(
            padding: EdgeInsets.only(
              left: _width * 0.05,
              right: _width * 0.05,
            ),
            child: Container(
              color: black,
              height: 1.0,
            ),
          ),
          preferredSize: Size.fromHeight(4.0),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatScreen()));
              },
              icon: Icon(
                Icons.chat_bubble,
                color: blue,
              ))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: _width * 0.02, right: _width * 0.02,top:_width * 0.08 ),
        child: ListView.builder(
            itemCount: things.length,
            itemBuilder: (context,int index){
              return Column(
                children: [

                  Card(
                    elevation: 4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(_width * 0.02),
                            bottomRight: Radius.circular(_width * 0.02),
                            bottomLeft: Radius.circular(_width * 0.02),
                            topLeft: Radius.circular(_width * 0.02)),
                      ),
                      height: _height * 0.35,
                      width: double.infinity,
                      child: Stack(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: _height * 0.35,
                                width: _width * 0.37,
                                decoration: BoxDecoration(
                                  color: blue,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(_width * 0.02),
                                      bottomRight: Radius.circular(_width * 0.02),
                                      bottomLeft: Radius.circular(_width * 0.02),
                                      topLeft: Radius.circular(_width * 0.02)),
                                ),
                                child: Image.asset(
                                  things[index]['img'] == null ? "assets/images/shirt3" : "${things[index]['img']}".toString() ,
                                ),
                              ),
                              SizedBox(width: _width * 0.02,),
                              Column(
                                children: [
                                  Container(
                                    width:_width * 0.5,
                                    child: Text(
                                      things[index]['content'],
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: black,
                                          fontWeight: FontWeight.w900,
                                          fontSize: _width * 0.045
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                  SizedBox(height: _height * 0.01,),
                                  Container(
                                    width:_width * 0.5,
                                    child: Text(
                                      things[index]['description'],
                                      style: TextStyle(
                                          fontFamily: "Poppins",
                                          color: blue,
                                          fontWeight: FontWeight.w900,
                                          fontSize: _width * 0.036
                                      ),
                                      maxLines: 2,
                                    ),
                                  ),
                                  SizedBox(height: _height * 0.01,),
                                  Row(
                                    children: [
                                      Card(
                                        elevation:5,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: _height * 0.1,
                                              width: _width * 0.15,
                                              decoration: BoxDecoration(
                                                color: Colors.lightBlueAccent,
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(_width * 0.02),
                                                    bottomRight: Radius.circular(_width * 0.02),
                                                    bottomLeft: Radius.circular(_width * 0.02),
                                                    topLeft: Radius.circular(_width * 0.02)),
                                              ),
                                              child: Image.asset(
                                                "assets/images/washing.png",
                                              ),
                                            ),
                                            Text("Wash",style: TextStyle(fontFamily: "Poppins",
                                                color: blue,
                                                fontWeight: FontWeight.w900,
                                                fontSize: _width * 0.025),),
                                          ],
                                        ),
                                      ),
                                      Card(
                                        elevation:5,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: _height * 0.1,
                                              width: _width * 0.15,
                                              decoration: BoxDecoration(
                                                color: Colors.lightBlueAccent,
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(_width * 0.02),
                                                    bottomRight: Radius.circular(_width * 0.02),
                                                    bottomLeft: Radius.circular(_width * 0.02),
                                                    topLeft: Radius.circular(_width * 0.02)),
                                              ),
                                              child: Image.asset(
                                                "assets/images/suit.png",
                                              ),
                                            ),
                                            Text("Cleaning",style: TextStyle(fontFamily: "Poppins",
                                                color: blue,
                                                fontWeight: FontWeight.w900,
                                                fontSize: _width * 0.025),),
                                          ],
                                        ),
                                      ),
                                      Card(
                                        elevation:5,
                                        child: Column(
                                          children: [
                                            Container(
                                              height: _height * 0.1,
                                              width: _width * 0.15,
                                              decoration: BoxDecoration(
                                                color: Colors.lightBlueAccent,
                                                borderRadius: BorderRadius.only(
                                                    topRight: Radius.circular(_width * 0.02),
                                                    bottomRight: Radius.circular(_width * 0.02),
                                                    bottomLeft: Radius.circular(_width * 0.02),
                                                    topLeft: Radius.circular(_width * 0.02)),
                                              ),
                                              child: Image.asset(
                                                "assets/images/iron.png",
                                              ),
                                            ),
                                            Text("Iron",style: TextStyle(fontFamily: "Poppins",
                                                color: blue,
                                                fontWeight: FontWeight.w900,
                                                fontSize: _width * 0.025),),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Spacer(),
                                  Text(
                                    things[index]['price'],
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        color: black,
                                        fontWeight: FontWeight.w900,
                                        fontSize: _width * 0.07
                                    ),
                                    maxLines: 2,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: _height * 0.01,
                  ),
                ],
              );
            }
        )
      ),
    );
  }
}
