import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  MyHomePage({this.title});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> list=[
    'Cosmology is a branch of astronomy that involves the origin and evolution of the universe, from the Big Bang to today and on into the future. According to NASA, the definition of cosmology is "the scientific study of the large scale properties of the universe as a whole."',
    'History',
    "Humanity's understanding of the universe has evolved significantly over time. In the early history of astronomy, Earth was regarded as the center of all things, with planets and stars orbiting it. In the 16th century, Polish scientist Nicolaus Copernicus suggested that Earth and the other planets in the solar system in fact orbited the sun, creating a profound shift in the understanding of the cosmos. In the late 17th century, Isaac Newton calculated how the forces between planets — specifically the gravitational forces — interacted. The dawn of the 20th century brought further insights into comprehending the vast universe. Albert Einstein proposed the unification of space and time in his General Theory of Relativity. In the early 1900s, scientists were debating whether the Milky Way contained the whole universe within its span, or whether it was simply one of many collections of stars. Edwin Hubble calculated the distance to a fuzzy nebulous object in the sky and determined that it lay outside of the Milky Way, proving our galaxy to be a small drop in the enormous universe. Using General Relativity to lay the framework, Hubble measured other galaxies and determined that they were rushing away from the us, leading him to conclude that the universe was not static but expanding.",
    'Cosmological Instruments and Missions',
    'Launched in November 1989, NASA\'s Cosmic Background Explorer (COBE) took precise measurements of radiation across the sky. The mission operated until 1993. Although NASA\'s Hubble Space Telescope is probably best known for its astounding images, a primary mission was cosmological. By more accurately measuring the distances to Cepheid variables, stars with a well-defined ratio between their brightness and their pulsations, Hubble helped to refine measurements regarding how the universe is expanding. Since its launch, astronomers have continued to use Hubble to make cosmological measurements and refine existing ones. Thanks to Hubble, "If you put in a box all the ways that dark energy might differ from the cosmological constant, that box would now be three times smaller," cosmologist Adam Riess of the Space Telescope Science Institute said in a statement. "That\'s progress, but we still have a long way to go to pin down the nature of dark energy."',
    'Some interesting questions',
    'What came before the Big Bang? Because of the enclosed and finite nature of the universe, we cannot see "outside" of our own universe. Space and time began with the Big Bang. While there are a number of speculations about the existence of other universes, there is no practical way to observe them, and as such there will never be any evidence for (or against!) them. Where did the Big Bang happen? The Big Bang did not happen at a single point but instead was the appearance of space and time throughout the entire universe at once. If other galaxies all seem to be rushing away from us, doesn\'t that place us at the center of the universe? No, because if we were to travel to a distant galaxy, it would seem that all surrounding galaxies were similarly rushing away. Think of the universe as a giant balloon. If you mark multiple points on the balloon, then blow it up, you would note that each point is moving away from all of the others, though none are at the center. The expansion of the universe functions in much the same way.'
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: CupertinoColors.black,
      appBar: AppBar(
        backgroundColor: CupertinoColors.black,
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.transparent
          ),
          child: Container(
            decoration: BoxDecoration(
              //backgroundBlendMode: BlendMode.color,
                color: Colors.transparent,
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Colors.blue,
                      Colors.purple
                    ]
                ),
                borderRadius:BorderRadius.only(topRight: Radius.circular(20.0))
            ),
            child: ListView(
              children: [
                buildListTile('HOME'),
                buildListTile('HISTORY'),
                buildListTile('COSMOLOGICAL INSTRUMENTS'),
                buildListTile('QUESTIONS'),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          //SizedBox(height: 30.0,),
          Container(
            height: 100.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.lightBlueAccent,
                Colors.yellowAccent
              ]),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(80.0),
              )
            ),
            child: Padding(
              padding:  EdgeInsets.only(top:20.0),
              child: ListTile(
                title: Text('COSMOLOGY',textAlign: TextAlign.center,style: TextStyle(
                  fontSize: 30.0,fontWeight: FontWeight.bold
                ),),
              ),
            ),
          ),
          SizedBox(height: 50.0,),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(list[0],style: TextStyle(color: Colors.white,fontSize: 20.0,),),
                SizedBox(height: 40.0,),
                Text(list[1],style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 40.0,),
                Text(list[2],style: TextStyle(fontSize: 20.0,color: Colors.white),),
                SizedBox(height: 40.0,),
                Text(list[3],style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 40.0,),
                Text(list[4],style: TextStyle(fontSize: 20.0,color: Colors.white),),
                SizedBox(height: 40.0,),
                Text(list[5],style: TextStyle(fontSize: 30.0,color: Colors.white,fontWeight: FontWeight.bold),),
                SizedBox(height: 40.0,),
                Text(list[6],style: TextStyle(fontSize: 20.0,color: Colors.white),),
                SizedBox(height: 20.0,),
              ],
            )
          ),
          Container(
            decoration: BoxDecoration(
                //color: Colors.grey[100],
              gradient: LinearGradient(
                colors: [
                  Colors.blue,
                  Colors.purple
                ]
              ),
                borderRadius: BorderRadius.only(topRight: Radius.circular(100.0))
            ),
            height  : 200.0,
            child: Column(
              children: [
                SizedBox(height: 30.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 50.0,),
                    Text('About'),
                    SizedBox(width: 100.0,),
                    Text('Contact Us'),
                    SizedBox(width: 100.0,),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  ListTile buildListTile(String text) {
    return ListTile(
              title: Text(text),
              onTap: (){},
            );
  }
}
