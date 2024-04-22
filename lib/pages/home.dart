import 'package:flutter/material.dart';
import 'package:providers/utils/bubble_stories.dart';
import 'package:providers/utils/user_posts.dart';

class UserHome extends StatelessWidget {
  UserHome({super.key});

  final List people = ['Shivam', 'Somya', 'Surbhi', 'Shachi', 'Rajesh'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Instagram',
                style: TextStyle(
                  color: Colors.black,
                )),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // TODO: add functionalities
                  },
                  child: const Icon(Icons.add),
                ),
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(Icons.favorite),
                ),
                const Icon(Icons.share),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // stories
          Container(
            height: 110,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: people.length,
              itemBuilder: (context, index) {
                return BubbleStories(text: people[index]);
              },
            ),
          ),

          // POSTS
          Expanded(
            child: ListView.builder(
              itemCount: people.length,
              itemBuilder: (context, index) {
                return UserPosts(
                  name: people[index],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
