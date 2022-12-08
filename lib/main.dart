import 'package:flutter/material.dart';

import 'components/home_page/topic_tile.dart';
import 'Word.dart';
import 'antonyms.dart';
import 'components/secondpage/secondpage.dart';

void main() => runApp(const MaterialApp(
  home: Flashcard(),
));

class Flashcard extends StatefulWidget {
  const Flashcard({Key? key}) : super(key: key);

  @override
  State<Flashcard> createState() => _FlashcardState();
}

class _FlashcardState extends State<Flashcard> {
  int myindex = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlashCards'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        ),
      body:
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          setState(() {
            myindex = index;
          });
        },
          currentIndex: myindex,
        items: [
          BottomNavigationBarItem(
            label:'Cards',
            backgroundColor: Colors.grey[600], icon: const Icon(Icons.numbers),
          ),
          BottomNavigationBarItem(
            tooltip: ('Practice'),
            label: 'Practice',
            backgroundColor: Colors.grey[600], icon: const Icon(Icons.numbers) ,
          ),
        ],
      ),
      );
  }
}


