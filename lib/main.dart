import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(CoolMonk());
}

class CoolMonk extends StatefulWidget {
  const CoolMonk({Key? key}) : super(key: key);

  @override
  _CoolMonkState createState() => _CoolMonkState();
}

class _CoolMonkState extends State<CoolMonk> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text("CoolMonk & Tilak"),
            elevation: 10,
            shadowColor: Colors.red,
            actions: const [
              Icon(Icons.logout)
            ],
          ),
          drawer: const Drawer(
            backgroundColor: Colors.blue,
            elevation: 15.0,
          ),
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 200,
                  width: 600,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colors.blue,
                      width: 2,
                    )
                  ),
                  child: PageView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Image.network("https://miro.medium.com/max/1062/1*3fFhf0jp9KfulswqM4HbRA.png"),
                      Image.network("https://miro.medium.com/max/1062/1*3fFhf0jp9KfulswqM4HbRA.png"),
                      Image.network("https://miro.medium.com/max/1062/1*3fFhf0jp9KfulswqM4HbRA.png"),
                      Image.network("https://miro.medium.com/max/1062/1*3fFhf0jp9KfulswqM4HbRA.png"),
                      Image.network("https://miro.medium.com/max/1062/1*3fFhf0jp9KfulswqM4HbRA.png"),
                      Image.network("https://miro.medium.com/max/1062/1*3fFhf0jp9KfulswqM4HbRA.png"),
                    ],
                  ),
                ),
              ),
              CarouselSlider(
                options: CarouselOptions(height: 400.0),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: BoxDecoration(
                              color: Colors.amber
                          ),
                          child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                      );
                    },
                  );
                }).toList(),
              )
            ],
          ),
        ),
    );
  }
}





