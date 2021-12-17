import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shop/utils/constants.dart';

import 'chat_screen.dart';

class PickupDate extends StatefulWidget {
  @override
  _PickupDateState createState() => _PickupDateState();
}

class _PickupDateState extends State<PickupDate> {
  String? _dropDownValue;
  String? _dropDownValue2;
  bool pressAttention = false;

  bool status = false;

  bool a=true;
  bool a1=false;
  bool b=true;
  bool b1=false;
  bool c=true;
  bool c1=false;

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
          "Pickup Date",
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
        padding: EdgeInsets.only(
            left: _width * 0.05, right: _width * 0.05, top: _width * 0.08),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "When would you like your Pickup ?",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: black,
                        fontWeight: FontWeight.w700,
                        fontSize: _width * 0.04),
                  ),
                  Spacer(),
                  Icon(
                    Icons.calendar_today_outlined,
                    color: blue,
                    size: _width * 0.06,
                  ),
                ],
              ),
              SizedBox(
                height: _height * 0.02,
              ),
             Container(
               height: _height * 0.25,
               width: double.infinity,
              // color: darkPink,
               child: ListView(
                 scrollDirection:Axis.horizontal ,
                 children: [
                   Card(
                     elevation: 4,
                     child: Container(
                       decoration: BoxDecoration(
                         // color: darkPink,
                         borderRadius: BorderRadius.only(
                             topRight: Radius.circular(_width * 0.03),
                             bottomRight: Radius.circular(_width * 0.03),
                             bottomLeft: Radius.circular(_width * 0.03),
                             topLeft: Radius.circular(_width * 0.03)),
                       ),
                       height: _height * 0.2,
                       width: _width * 0.3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             height: _height * 0.1,
                             width: _width * 0.3,
                             decoration: BoxDecoration(
                               color: grey,
                               borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(_width * 0.03),
                                   //bottomRight: Radius.circular(_width * 0.02),
                                   //bottomLeft: Radius.circular(_width * 0.02),
                                   topLeft: Radius.circular(_width * 0.03)),
                             ),
                             child: Center(
                               child: Text(
                                 "Fri",
                                 style: TextStyle(
                                     fontFamily: "Poppins",
                                     fontWeight: FontWeight.w900,
                                     fontSize: _width * 0.06,
                                     color: white),
                               ),
                             ),
                           ),
                           SizedBox(height: _height * 0.01,),
                           Center(
                             child: Text(
                               "25 June",
                               style: TextStyle(
                                   fontFamily: "Poppins",
                                   //fontWeight: FontWeight.w900,
                                   fontSize: _width * 0.04,
                                   color: black),
                             ),
                           ),
                           SizedBox(height: _height * 0.01,),
                           Center(
                             child: Text(
                               "Yesterday",
                               style: TextStyle(
                                   fontFamily: "Poppins",
                                   fontWeight: FontWeight.w900,
                                   fontSize: _width * 0.045,
                                   color: blue),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(width: _width * 0.01,),
                   Card(
                     elevation: 4,
                     child: Container(
                       decoration: BoxDecoration(
                         // color: darkPink,
                         borderRadius: BorderRadius.only(
                             topRight: Radius.circular(_width * 0.03),
                             bottomRight: Radius.circular(_width * 0.03),
                             bottomLeft: Radius.circular(_width * 0.03),
                             topLeft: Radius.circular(_width * 0.03)),
                       ),
                       height: _height * 0.2,
                       width: _width * 0.3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             height: _height * 0.1,
                             width: _width * 0.3,
                             decoration: BoxDecoration(
                               color: blue,
                               borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(_width * 0.03),
                                   //bottomRight: Radius.circular(_width * 0.02),
                                   //bottomLeft: Radius.circular(_width * 0.02),
                                   topLeft: Radius.circular(_width * 0.03)),
                             ),
                             child: Center(
                               child: Text(
                                 "Sat",
                                 style: TextStyle(
                                     fontFamily: "Poppins",
                                     fontWeight: FontWeight.w900,
                                     fontSize: _width * 0.06,
                                     color: white),
                               ),
                             ),
                           ),
                           SizedBox(height: _height * 0.01,),
                           Center(
                             child: Text(
                               "26 June",
                               style: TextStyle(
                                   fontFamily: "Poppins",
                                   //fontWeight: FontWeight.w900,
                                   fontSize: _width * 0.04,
                                   color: black),
                             ),
                           ),
                           SizedBox(height: _height * 0.01,),
                           Center(
                             child: Text(
                               "Today",
                               style: TextStyle(
                                   fontFamily: "Poppins",
                                   fontWeight: FontWeight.w900,
                                   fontSize: _width * 0.045,
                                   color: blue),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(width: _width * 0.01,),
                   Card(
                     elevation: 4,
                     child: Container(
                       decoration: BoxDecoration(
                         // color: darkPink,
                         borderRadius: BorderRadius.only(
                             topRight: Radius.circular(_width * 0.03),
                             bottomRight: Radius.circular(_width * 0.03),
                             bottomLeft: Radius.circular(_width * 0.03),
                             topLeft: Radius.circular(_width * 0.03)),
                       ),
                       height: _height * 0.2,
                       width: _width * 0.3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             height: _height * 0.1,
                             width: _width * 0.3,
                             decoration: BoxDecoration(
                               color: white,
                               borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(_width * 0.03),
                                   //bottomRight: Radius.circular(_width * 0.02),
                                   //bottomLeft: Radius.circular(_width * 0.02),
                                   topLeft: Radius.circular(_width * 0.03)),
                             ),
                             child: Center(
                               child: Text(
                                 "Sun",
                                 style: TextStyle(
                                     fontFamily: "Poppins",
                                     fontWeight: FontWeight.w900,
                                     fontSize: _width * 0.06,
                                     color: black),
                               ),
                             ),
                           ),
                           SizedBox(height: _height * 0.01,),
                           Center(
                             child: Text(
                               "27 June",
                               style: TextStyle(
                                   fontFamily: "Poppins",
                                   //fontWeight: FontWeight.w900,
                                   fontSize: _width * 0.04,
                                   color: black),
                             ),
                           ),
                           SizedBox(height: _height * 0.01,),
                           Center(
                             child: Text(
                               "Tomorrow",
                               style: TextStyle(
                                   fontFamily: "Poppins",
                                   fontWeight: FontWeight.w900,
                                   fontSize: _width * 0.045,
                                   color: blue),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),
                   SizedBox(width: _width * 0.01,),
                   Card(
                     elevation: 4,
                     child: Container(
                       decoration: BoxDecoration(
                         // color: darkPink,
                         borderRadius: BorderRadius.only(
                             topRight: Radius.circular(_width * 0.03),
                             bottomRight: Radius.circular(_width * 0.03),
                             bottomLeft: Radius.circular(_width * 0.03),
                             topLeft: Radius.circular(_width * 0.03)),
                       ),
                       height: _height * 0.2,
                       width: _width * 0.3,
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Container(
                             height: _height * 0.1,
                             width: _width * 0.3,
                             decoration: BoxDecoration(
                               color: darkPink,
                               borderRadius: BorderRadius.only(
                                   topRight: Radius.circular(_width * 0.03),
                                   //bottomRight: Radius.circular(_width * 0.02),
                                   //bottomLeft: Radius.circular(_width * 0.02),
                                   topLeft: Radius.circular(_width * 0.03)),
                             ),
                             child: Center(
                               child: Text(
                                 "Mon",
                                 style: TextStyle(
                                     fontFamily: "Poppins",
                                     fontWeight: FontWeight.w900,
                                     fontSize: _width * 0.06,
                                     color: white),
                               ),
                             ),
                           ),
                           SizedBox(height: _height * 0.01,),
                           Center(
                             child: Text(
                               "29 June",
                               style: TextStyle(
                                   fontFamily: "Poppins",
                                   //fontWeight: FontWeight.w900,
                                   fontSize: _width * 0.04,
                                   color: black),
                             ),
                           ),
                           SizedBox(height: _height * 0.01,),
                           Center(
                             child: Text(
                               "Blockday",
                               style: TextStyle(
                                   fontFamily: "Poppins",
                                   fontWeight: FontWeight.w900,
                                   fontSize: _width * 0.045,
                                   color: blue),
                             ),
                           ),
                         ],
                       ),
                     ),
                   ),

                 ],
               ),
             ),
              SizedBox(height: _height * 0.04,),
              Center(
                child: Text(
                  "Availible Time Slots",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: black,
                      fontWeight: FontWeight.w900,
                      fontSize: _width * 0.05),
                ),
              ),
              SizedBox(height: _height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        a = !a;
                      });
                    },
                    child: Card(
                      elevation: 5,
                      color:a  ? white : blue,
                      child: Container(
                        height: _height * 0.07,
                        width: _width * 0.27,

                        decoration: BoxDecoration(
                          color: a  ? white : blue,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(_width * 0.03),
                              bottomRight: Radius.circular(_width * 0.03),
                              bottomLeft: Radius.circular(_width * 0.03),
                              topLeft: Radius.circular(_width * 0.03)),
                        ),
                        child: Center(
                          child: Text(
                            "7am - 9am",style: TextStyle(fontFamily: "Poppins",color: a  ? blue : white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        b = !b;
                      });
                    },
                    child: Card(
                      elevation: 5,
                      color:b  ? white : blue,
                      child: Container(
                        height: _height * 0.07,
                        width: _width * 0.27,

                        decoration: BoxDecoration(
                          color: b  ? white : blue,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(_width * 0.03),
                              bottomRight: Radius.circular(_width * 0.03),
                              bottomLeft: Radius.circular(_width * 0.03),
                              topLeft: Radius.circular(_width * 0.03)),
                        ),
                        child: Center(
                          child: Text(
                            "10am - 12pm",style: TextStyle(fontFamily: "Poppins",color: b  ? blue : white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        c = !c;
                      });
                    },
                    child: Card(
                      elevation: 5,
                      color:c  ? white : blue,
                      child: Container(
                        height: _height * 0.07,
                        width: _width * 0.27,

                        decoration: BoxDecoration(
                          color: c  ? white : blue,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(_width * 0.03),
                              bottomRight: Radius.circular(_width * 0.03),
                              bottomLeft: Radius.circular(_width * 0.03),
                              topLeft: Radius.circular(_width * 0.03)),
                        ),
                        child: Center(
                          child: Text(
                            "1pm - 2pm",style: TextStyle(fontFamily: "Poppins",color: c  ? blue : white),
                          ),
                        ),
                      ),
                    ),
                  ),


                ],
              ),
              SizedBox(height: _height * 0.02,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        a1 = !a1;
                      });
                    },
                    child: Card(
                      elevation: 5,
                      color:a1  ? white : blue,
                      child: Container(
                        height: _height * 0.07,
                        width: _width * 0.27,

                        decoration: BoxDecoration(
                          color: a1  ? white : blue,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(_width * 0.03),
                              bottomRight: Radius.circular(_width * 0.03),
                              bottomLeft: Radius.circular(_width * 0.03),
                              topLeft: Radius.circular(_width * 0.03)),
                        ),
                        child: Center(
                          child: Text(
                            "4pm - 6pm",style: TextStyle(fontFamily: "Poppins",color: a1  ? blue : white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      setState(() {
                        b1 = !b1;
                      });
                    },
                    child: Card(
                      elevation: 5,
                      color:b1  ? white : blue,
                      child: Container(
                        height: _height * 0.07,
                        width: _width * 0.27,

                        decoration: BoxDecoration(
                          color: b1  ? white : blue,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(_width * 0.03),
                              bottomRight: Radius.circular(_width * 0.03),
                              bottomLeft: Radius.circular(_width * 0.03),
                              topLeft: Radius.circular(_width * 0.03)),
                        ),
                        child: Center(
                          child: Text(
                            "8pm - 10pm",style: TextStyle(fontFamily: "Poppins",color: b1  ? blue : white),
                          ),
                        ),
                      ),
                    ),
                  ),



                ],
              ),
              SizedBox(height: _height * 0.04,),
              Card(
                elevation: 5,

                child: Container(
                  height: _height * 0.07,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    // color: b1  ? white : blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(_width * 0.03),
                        bottomRight: Radius.circular(_width * 0.03),
                        bottomLeft: Radius.circular(_width * 0.03),
                        topLeft: Radius.circular(_width * 0.03)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: _width * 0.03, right: _width * 0.03,),
                    child: Row(
                      children: [
                        Text(
                          "Repeat Pickup",style: TextStyle(fontFamily: "Poppins",color: black,fontWeight: FontWeight.w900,fontSize: _width * 0.045),
                        ),
                        Spacer(),
                        Container(
                          child: FlutterSwitch(
                            width: 60,
                            height: 25.0,
                            valueFontSize: 0,
                            toggleSize: 20.0,
                            value: status,
                            borderRadius: 20.0,
                            activeColor: blue,
                            // padding: 8.0,
                            showOnOff: true,
                            onToggle: (val) {
                              setState(() {
                                status = val;
                              });
                            },
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              SizedBox(height: _height * 0.04,),
              Center(
                child: Text(
                  'How Often Repeat ?',
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: black,
                      fontSize: _width * 0.05,fontWeight: FontWeight.w900),
                ),
              ),
              Card(
                elevation: 5,

                child: Container(
                  height: _height * 0.07,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    // color: b1  ? white : blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(_width * 0.03),
                        bottomRight: Radius.circular(_width * 0.03),
                        bottomLeft: Radius.circular(_width * 0.03),
                        topLeft: Radius.circular(_width * 0.03)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: _width * 0.03, right: _width * 0.03,),
                    child:  DropdownButtonFormField(
                      elevation: 2,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                        ),
                      ),
                      hint: _dropDownValue == null
                          ? Text(
                        'Every Week',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: black,
                            fontSize: _width * 0.04),
                      )
                          : Text(
                        _dropDownValue!,
                        style: TextStyle(
                            fontFamily: "Poppins",
                            color: black,fontSize: _width * 0.04),
                      ),
                      isExpanded: true,
                      icon: Icon(Icons.keyboard_arrow_down),
                      iconSize: 28,
                      style: TextStyle(color: Colors.blue),
                      items: ['Every Week', 'Every Month', 'Every Year'].map(
                            (val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(val,
                                style: TextStyle(
                                    fontFamily: "Poppins",
                                    color: black,fontSize: _width * 0.04)),
                          );
                        },
                      ).toList(),
                      onChanged: (val) {
                        setState(
                              () {
                            _dropDownValue = val.toString();
                          },
                        );
                      },
                    )
                  ),
                ),
              ),
              SizedBox(height: _height * 0.04,),
              Center(
                child: Text(
                  'How Many Times ?',
                  style: TextStyle(
                      fontFamily: "Poppins",
                      color: black,
                      fontSize: _width * 0.05,fontWeight: FontWeight.w900),
                ),
              ),
              Card(
                elevation: 5,

                child: Container(
                  height: _height * 0.07,
                  width: double.infinity,

                  decoration: BoxDecoration(
                    // color: b1  ? white : blue,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(_width * 0.03),
                        bottomRight: Radius.circular(_width * 0.03),
                        bottomLeft: Radius.circular(_width * 0.03),
                        topLeft: Radius.circular(_width * 0.03)),
                  ),
                  child: Padding(
                      padding: EdgeInsets.only(
                        left: _width * 0.03, right: _width * 0.03,),
                      child:  DropdownButtonFormField(
                        elevation: 2,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.transparent,
                            ),
                          ),
                        ),
                        hint: _dropDownValue2 == null
                            ? Text(
                          '01',
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: black,
                              fontSize: _width * 0.04),
                        )
                            : Text(
                          _dropDownValue2!,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              color: black,fontSize: _width * 0.04),
                        ),
                        isExpanded: true,
                        icon: Icon(Icons.keyboard_arrow_down),
                        iconSize: 28,
                        style: TextStyle(color: Colors.blue),
                        items: ['01', '02', '03'].map(
                              (val) {
                            return DropdownMenuItem<String>(
                              value: val,
                              child: Text(val,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: black,fontSize: _width * 0.04)),
                            );
                          },
                        ).toList(),
                        onChanged: (val) {
                          setState(
                                () {
                              _dropDownValue2 = val.toString();
                            },
                          );
                        },
                      )
                  ),
                ),
              ),
              SizedBox(height: _height * 0.05,),
              Center(
                child: Container(
                  width: double.infinity,
                  height: _height * 0.1,
                  child: new MaterialButton(
                    elevation: 0,
                    child: new Text(
                      'Continue',
                      style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: _width * 0.045,
                        color: pressAttention ? white : blue,
                      ),
                    ),
                    textColor: Colors.white,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        side: BorderSide(color: blue, width: 1)),
                    color: pressAttention ? blue : white,
                    onPressed: () {
                      setState(() {
                        pressAttention = !pressAttention;

                      });
                    },
                  ),
                ),
              ),
SizedBox(height: _height * 0.05,)
            ],
          ),
        ),
      ),
    );
  }
}
