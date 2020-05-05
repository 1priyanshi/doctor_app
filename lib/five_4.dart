import 'package:flutter/material.dart';
import 'package:doctor_app/SizeConfig.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'HomeScreen App',
              home: Five_4(),
            );
          },
        );
      },
    );
  }
}

class Five_4 extends StatefulWidget {
  Five_4({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Five_4State createState() => _Five_4State();
}

class _Five_4State extends State<Five_4> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[

          Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50 * SizeConfig.heightMultiplier,
                decoration: BoxDecoration(
                    color: Color(0xffff8a80)
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 50.0),
                child: Row(
                  children: <Widget>[
                    GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.black,)),
                    Spacer(),
                    Icon(Icons.add, color: Colors.black,)
                  ],
                ),
              ),

              Positioned(
                top: 130.0,
                left: 100.0,
                child: Image.asset(
                  "assets/cream.png",
                  fit: BoxFit.contain,
                  height: 50 * SizeConfig.imageSizeMultiplier,
                  width: 50 * SizeConfig.imageSizeMultiplier,),
              ),

              Positioned(
                top: 45 * SizeConfig.heightMultiplier,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 55 * SizeConfig.heightMultiplier,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40.0),
                        topLeft: Radius.circular(40.0),
                      )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 50.0, bottom: 20.0),
                        child: Text("Holy Family Hospital", style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 3 * SizeConfig.textMultiplier,
                            fontFamily: 'OpenSans'
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Text("24/7", style: TextStyle(
                            color: Colors.redAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 2.5 * SizeConfig.textMultiplier,
                            fontFamily: 'OpenSans'
                        ),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, top: 20.0),
                        child: Text('''Please take appointment before visiting''',
                          style: TextStyle(
                              color: Colors.black,
                              letterSpacing: 0.2,
                              fontWeight: FontWeight.bold,
                              fontSize: 1.8 * SizeConfig.textMultiplier,
                              fontFamily: 'OpenSans'
                          ),),
                      ),

                      SizedBox(height: 2 * SizeConfig.heightMultiplier,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 40.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.sentiment_very_satisfied),
                                SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                                Text("Stay Safe", style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 0.2,
                                    fontSize: 1.5 * SizeConfig.textMultiplier,
                                    fontFamily: 'OpenSans'
                                ),),
                              ],
                            ),
                            Spacer(),
                            Text("Stay inside home", style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 1.5 * SizeConfig.textMultiplier,
                                fontFamily: 'OpenSans-Bold'
                            ),),
                          ],
                        ),
                      ),
                      SizedBox(height: 3 * SizeConfig.heightMultiplier,),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.redAccent),
                                  borderRadius: BorderRadius.circular(5.0)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Icon(Icons.favorite_border, color: Colors.redAccent),
                              ),
                            ),
                            SizedBox(width: 3 * SizeConfig.widthMultiplier,),
                            Expanded(
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    color: Colors.redAccent
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(Icons.access_time, color: Colors.white,),
                                      SizedBox(width: 1 * SizeConfig.widthMultiplier,),
                                      Text("Appointment", style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 2.5 * SizeConfig.textMultiplier,
                                          fontWeight: FontWeight.bold,
                                          fontFamily: 'OpenSans-Bold'
                                      ),)
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),

    );
  }
}