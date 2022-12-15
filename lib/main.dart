
import 'package:flutter/material.dart';
import 'components/home_page/topic_tile.dart';
import 'Word.dart';
import 'antonyms.dart';
import 'components/secondpage/secondpage.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/home',
  home: Flashcard(),
  routes: {
    '/second': (context) => SecondPage(),
    '/home': (context) => Flashcard(),
  },
));

class Flashcard extends StatefulWidget {
  const Flashcard({Key? key}) : super(key: key);

  @override
  State<Flashcard> createState() => _FlashcardState();

}

class _FlashcardState extends State<Flashcard> {
  final _textController = TextEditingController();
  final _Controller = TextEditingController();
  String userdata = '';
  String useropposite = '';
  int myindex = 0;

   List<String> data = [
     'Artificial', 'Arrive', 'Interesting', 'Even', 'Alike'];
   List<String> opposite = [
     'Natural', 'Depart', 'Boring', 'Odd', 'Different'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlashCards'),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      body: GridView.builder(
        itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.grey[700],
              child: GridTile(
                header: Text(data[index]),
                footer: Text(opposite[index]),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                  child: IconButton(onPressed: (){setState(() {
                    data.removeAt(index);
                    opposite.removeAt(index);
                  });}, icon: Icon(Icons.delete)),
                ),
              ),

            );
          },
    ),



      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(context: context, builder: (BuildContext context){
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Card(
                  color: Colors.grey[700],
                  child: Column(
                    children: [
                      Text(userdata),
                      Text(useropposite),
                    ],
                  ),
                ),
                Material(
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'Enter word',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(onPressed: (){
                        _textController.clear();
                      }, icon: const Icon(Icons.clear),),
                    ),
                  ),
                ),
                Material(
                  child: TextField(
                    controller: _Controller,
                    decoration: InputDecoration(
                      hintText: 'Enter opposite',
                      border: const OutlineInputBorder(),
                      suffixIcon: IconButton(onPressed: (){
                        _Controller.clear();
                      }, icon: const Icon(Icons.clear),),
                    ),
                  ),
                ),
                MaterialButton(onPressed: () {
                  setState(() {
                    userdata = _textController.text;
                    useropposite = _Controller.text;
                  });
                },
                  color: Colors.grey[600],
                child: Text('OK'),
                ),
              ],
            );
          }
          );
        },

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
            label: 'Cards',
            backgroundColor: Colors.grey[600], icon: const Icon(Icons.numbers),

          ),
          BottomNavigationBarItem(
            tooltip: ('Practice'),
            label: 'Practice',
            backgroundColor: Colors.grey[600],
            icon: const Icon(Icons.numbers),
            activeIcon: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              }, icon: Icon(Icons.numbers),
            ),
          ),
        ],
      ),
    );
  }
}











