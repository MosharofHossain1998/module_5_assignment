import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          toolbarHeight: 80,
          elevation: 70,
          backgroundColor: Colors.green,
          leading: Icon(Icons.home,size: 25,color: Colors.white,),
          centerTitle: true,
          title: Text(
            "Home",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          actions: [
            Icon(Icons.search,size: 25,color: Colors.white,),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("This Is Module 5 Assignment"
              ,style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(

                    text: TextSpan(
                      children: [
                        TextSpan(
                            text: "My",
                            style: TextStyle(
                              color: Colors.red,
                              fontSize: screenWidth * 0.060,
                            )
                        ),

                        TextSpan(
                            text: "phone",
                            style: TextStyle(
                              color: Colors.cyan,
                              fontSize: screenWidth * 0.04,
                            )
                        ),

                        TextSpan(
                            text: "name",
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: screenWidth * 0.055,
                            )
                        ),

                        TextSpan(
                            text: "Your phone name",
                            style: TextStyle(
                              color: Colors.orange,
                              fontSize: screenWidth * 0.075,
                            )
                        ),

                        ]




                    )

                ),
              ],
            )
          ],

        ),
      ),

    );

    }

}
