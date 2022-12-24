import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 178,
                    width: 128,
                    child: Image(
                      image: AssetImage("Asset/images/doctor_image.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(16)),
                  ),
                  SizedBox(
                    width: 34,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Dr. Norah",
                        style: TextStyle(
                            fontSize: 34, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Heart Speciallist",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        children: [
                          CustomIconStyle(
                            icon: Icons.mail,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomIconStyle(icon: Icons.phone),
                          SizedBox(
                            width: 8,
                          ),
                          CustomIconStyle(icon: Icons.video_call)
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 23),
              Text("About",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500)),
              SizedBox(
                height: 8,
              ),
              Text(
                "This part about this app",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w300,
                    color: Colors.grey),
              ),
              SizedBox(height: 64),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomRowAddress(
                          textAddress:
                              Text("Address", style: TextStyle(fontSize: 24)),
                          textDescription: Text(
                            "House 2 Road 5\nSaudi Arabia, Riyadh\nKing Fisal Hospital",
                            style: TextStyle(color: Colors.grey[700]),
                          )),
                      SizedBox(height: 16),
                      
                      CustomRowAddress(
                          textAddress:
                              Text("Address2", style: TextStyle(fontSize: 24)),
                          textDescription: Text(
                            "House 10 Road 8\nSaudi Arabia, Riyadh",
                            style: TextStyle(color: Colors.grey[700]),
                          ))
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: AssetImage("Asset/images/map_image.JPG"),
                      height: 200,
                      width: 150,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class CustomRowAddress extends StatelessWidget {
  const CustomRowAddress({
    Key? key,
    required this.textAddress,
    required this.textDescription,
  }) : super(key: key);

  final Text textAddress;
  final Text textDescription;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.location_on_outlined,
          color: Colors.grey[700],
        ),
        SizedBox(width: 4),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textAddress,
            textDescription,
          ],
        )
      ],
    );
  }
}

class CustomIconStyle extends StatelessWidget {
  const CustomIconStyle({
    Key? key,
    required this.icon,
  }) : super(key: key);

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icon,
        color: Colors.orangeAccent,
        size: 32,
      ),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Colors.deepOrange[50],
          borderRadius: BorderRadius.circular(16)),
    );
  }
}
