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
     debugShowCheckedModeBanner: false,
     home: homeScreen(),
   );
  }
}

class homeScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _homeScreenState();
  }

}

class _homeScreenState extends State<homeScreen>{

  int followers = 0;
  int likes = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Heros app'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.green,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', height: 150,),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white, width: 2)
              ),
              child: Column(
                children: [
                  Text('🫂Followers: $followers', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),),
                  const SizedBox(
                    height: 20,
                  ),
                  Text('👍Likes: $likes', style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.red,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white70,
          items: [
            BottomNavigationBarItem(
                icon: const Icon(Icons.favorite),
              label: 'Like($likes)',
            ),
            BottomNavigationBarItem(
                icon: const Icon(Icons.subscriptions),
              label: 'Subscribe($followers)'
            )
          ],
        onTap: (index) {
            if(index == 0){
              setState(() {
                likes++;
              });
            }
            else if(index == 1){
              setState(() {
                followers++;
              });
            }
        },
      ),
    );
  }

}


