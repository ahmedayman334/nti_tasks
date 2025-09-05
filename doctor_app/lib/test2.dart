import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(backgroundColor: Colors.white12,title: Text("Development",style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.amberAccent)),centerTitle: true,),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 88),
          child: Column(
            children: [
              Row(
                spacing: 10,
                children: [
                  Text(
                    "BMI",
                    style: TextStyle(
                      color: Color(0xffFFB534),
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                    ),
                  ),
                  Text(
                    "Calculator",
                    style: TextStyle(
                      color: Color(0xff65B741),
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Text(
                "Please choose your gender",
                style: TextStyle(
                  color: Color(0xff0A1207),
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF0F8EC),
                ),
                width: 370,
                height: 180,
                child: Row(
                  children: [
                    Text(
                      "Male",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 32,
                        color: Color(0xff519234),
                      ),
                    ),
                    Image.asset("assets/images/img.png"),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xffF0F8EC),
                ),
                width: 370,
                height: 180,

                child: Row(
                  children: [
                    Text("Female"),
                    Image.asset("assets/images/img_1.png"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
