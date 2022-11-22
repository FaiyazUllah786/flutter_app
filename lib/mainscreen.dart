import 'package:flutter/material.dart';
import 'package:simple_page_indicator/simple_page_indicator.dart';
import 'package:wayne_interprise/homepage.dart';


class MainScreen extends StatefulWidget {
   MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final controller = PageController();
  bool isLastPage=false;
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.only(bottom: 20),
          child: PageView(
            controller: controller,
            onPageChanged: (index) {
              setState(() {
                isLastPage=index==2;
              });
            },
            children: [
              Container(
                color: Colors.grey[700],
                child: Center(child: Column(
                  children: [
                    Spacer(),
                    Image.asset("assets/images/alfred.png",scale: 2,),
                    Spacer(),
                    Text("Hello Sir,\nGotham city need your help again.\nI am gonna ready your schedule",
                      style: TextStyle(fontSize: 20),),
                    Spacer()
                  ],
                ),
                ),
              ),Container(
                color: Colors.black87,
                child: Center(child: Column(
                  children: [
                    Spacer(),
                    Image.asset("assets/images/batman.png"),
                    Spacer(),
                    Text("Yeah Alfred,\n I have to save gotham again.\n I need my Batmobile",
                      style: TextStyle(fontSize: 20,color: Colors.white),),
                    Spacer()
                  ],
                )),
              ),Container(
                color: Colors.black87,
                child: Center(child: Column(
                  children: [
                    Spacer(),
                    Image.asset("assets/images/batmobile.png",),
                    Spacer(),
                    Text("Batmobile is ready",style: TextStyle(fontSize: 20,color: Colors.white),),
                    Spacer()
                  ],
                )),
              ),
            ],
          ),
        ),
        bottomSheet: isLastPage?
        TextButton(
          onPressed: ()async{
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context)=>HomePage()),
            );
          },
            child: Text("Drive",style: TextStyle(fontSize: 25,fontStyle: FontStyle.normal,fontWeight: FontWeight.normal),),
          style: TextButton.styleFrom(
          primary: Colors.black,
        backgroundColor: Colors.grey,
        minimumSize: Size.fromHeight(80)),)
            :Container(
          padding: EdgeInsets.symmetric(horizontal: 2),
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(onPressed: (){controller.jumpToPage(2);}, child: Text("Skip")),
              Center(child: SimplePageIndicator(
                controller: controller,
                itemCount: 3,
              ),),
              TextButton(onPressed: (){controller.nextPage(duration: Duration(seconds: 1), curve: Curves.easeInOut);}, child: Text("Next"))
            ],
          ),
        ),
      ),
    );
  }
}

