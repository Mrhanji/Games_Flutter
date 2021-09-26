import 'package:flutter/material.dart';
import 'package:flutter_games/Games/Bonfire.dart';
import 'package:flutter_games/Games/Chess.dart';
import 'package:skeleton_text/skeleton_text.dart';
import 'package:floating_ribbon/floating_ribbon.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 
  @override
  Widget build(BuildContext context) {
     var size = MediaQuery.of(context).size;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: ListView(
          children: [
            ListTile(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>Chess())),
              leading: FloatingRibbon(
                height: 85,
                width: 85,
                childHeight: 90,
                childWidth: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/chese.png'),
                ),
                childDecoration: BoxDecoration(color: Colors.white70),
                ribbon: SkeletonAnimation(
                  child: Center(
                    child: Text(
                      'Exclusive',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                shadowHeight: 5,
              ),
              title: Text('Chess'),
              trailing: Icon(Icons.arrow_right_rounded),
            ),
              ListTile(onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>BoneFire())),
              leading: FloatingRibbon(
                height: 85,
                width: 85,
                childHeight: 90,
                childWidth: 80,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset('assets/chese.png'),
                ),
                childDecoration: BoxDecoration(color: Colors.white70),
                ribbon: SkeletonAnimation(
                  child: Center(
                    child: Text(
                      'Exclusive',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                shadowHeight: 5,
              ),
              title: Text('Cards'),
              trailing: Icon(Icons.arrow_right_rounded),
            )
         
         
          ],
        ),
      ),
    );
  }
}
