import 'content.dart';
import 'package:flutter/material.dart';

class tweetCard extends StatelessWidget {
  final Content tweet;
  final Function() delete;
  tweetCard({required this.tweet, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(5.0, 1.0, 5.0,0),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
              child: Row(
                children:[
                  CircleAvatar(
                    backgroundImage: AssetImage('${tweet.image}'),
                    radius:30.0,
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: Text(
                      '${tweet.text}',
                      style: TextStyle(
                        fontSize: 12,
                        letterSpacing: 1,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: 70.0,
                ),
                Expanded(
                  child: IconButton(onPressed: (){},
                    icon: Icon(Icons.topic_outlined),
                  ),
                ),
                Expanded(
                  child: IconButton(onPressed: (){},
                    icon: Icon(Icons.transform),
                  ),
                ),
                Expanded(
                  child: IconButton(onPressed: (){},
                    icon: Icon(Icons.thumb_up_outlined),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    onPressed: delete,
                    icon: Icon(Icons.delete),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}