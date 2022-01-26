import 'package:flutter/material.dart';
import 'content.dart';
import 'tweets_card.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  void _onItemTapped(int index){
    setState( (){
      _selectedIndex = index;
    });
  }
  List<Content> tweets = [
  Content('There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable','assets/nna.jpg'),
  Content('In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.','assets/bb.jpg'),
  Content('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old','assets/cc.jpeg'),
  Content('Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old','assets/cc.jpeg')

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        actions: [
          SizedBox(width: 10.0),
          CircleAvatar(
                    radius: 20.0,
                    backgroundImage: AssetImage('assets/nna.jpg'),
                    ),
          SizedBox(width: 50.0),
          Expanded(
            child: Padding(
              padding: EdgeInsets.fromLTRB(53, 15, 5, 5),
              child: Text(
                    'Twitter',
                style: TextStyle(
                  fontSize: 20.0,
                ),

              ),
            ),
          ),
          Expanded(
            child: Padding(
                padding: EdgeInsets.fromLTRB(60, 0, 5, 5),
                child: Icon(Icons.star_purple500_rounded)
            ),
          ),
        ],
        backgroundColor: Colors.blueGrey[800],
      ),
      body: Column(
        children: tweets.map((tweet) {
          return tweetCard(
            tweet: tweet,
            delete: (){
              setState((){
                tweets.remove(tweet);
              });
            }
          );
        }).toList()
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
        backgroundColor: Colors.blueGrey[800],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'home',
            backgroundColor: Colors.blueGrey[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'search',
            backgroundColor: Colors.blueGrey[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle_notifications),
            label: 'Notifications',
            backgroundColor: Colors.blueGrey[800],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: 'Inbox',
            backgroundColor: Colors.blueGrey[800],
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber,
        onTap: _onItemTapped,
      ),
    );
  }
}



