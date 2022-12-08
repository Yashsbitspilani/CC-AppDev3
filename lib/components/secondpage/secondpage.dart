import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlashCards'),
        backgroundColor: Colors.grey[850],
        centerTitle: true,
      ),
      body: Column(
        children: [
          Divider(
            thickness: 3,
            color: Colors.grey[850],
            indent: 15,
            endIndent: 15,
          ),
          SizedBox(
            height: 400,
            width: 400,
            child: Card(
              color: Colors.grey[700],
              shadowColor: Colors.black,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Column(
                children: const [
                  Padding(padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0)),
                  Text('Card #1',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                  Text('Alike',
                    textDirection: TextDirection.ltr,
                    textAlign: TextAlign.center,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          const Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0,50.0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(child: const Text('Show Answer'),
                onPressed: () {} ,
              ),
              IconButton(
                icon: const Icon(Icons.arrow_forward_ios_sharp),
                onPressed: () {} ,
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: const Icon(Icons.numbers),
            label: 'Cards',
            backgroundColor: Colors.grey[600],
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.numbers),
            label: 'Practice',
            backgroundColor: Colors.grey[600],
          ),
        ],
      ),
    );
  }
}
