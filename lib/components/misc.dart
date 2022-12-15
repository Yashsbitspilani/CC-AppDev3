Column(
children: [
Divider(
thickness: 3,
color: Colors.grey[850],
indent: 15,
endIndent: 15,
),
widgetList[myindex],

IconButton(
onPressed: () {} ,
icon: const Icon(Icons.delete),
),


@override
void initState() {
  for (var t in antonyms) {
    if (!_topics.contains(t.topic)) {
      _topics.add(t.topic);
    }
  }
}


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
backgroundColor: Colors.grey[600], icon: const Icon(Icons.numbers),
),
],
),

CustomScrollView(
slivers: [
SliverGrid(delegate: SliverChildBuilderDelegate(
childCount: _topics.length,
(context, index) => TopicTile(topic: _topics[index]),),
gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
crossAxisCount: 2,
crossAxisSpacing: 6,
mainAxisSpacing: 6,
),
),
],
),



children: [
Row(
children: [
Container(
height: 150.0,
width: 150.0,
child: Card(
color: Colors.grey[600],
shadowColor: Colors.black,
elevation: 5.0,
shape: RoundedRectangleBorder(
borderRadius: BorderRadius.circular(20.0),
),
ch
),
),

],
),
],




List<Widget> widgetList = [
  const SecondPage(),
];


GridView.builder(
gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
itemCount: antonyms.length,
itemBuilder: (context, index){
return Text('antonyms [index]');
}
),


Column(
children: [
Divider(
thickness: 3,
color: Colors.grey[850],
indent: 15,
endIndent: 15,
),
GridView(
gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
children: [
Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
Container(color: Colors.blue,margin: EdgeInsets.all(10.0),),
IconButton(
onPressed: () {} ,
icon: const Icon(Icons.delete),
),
],
),
widgetList[myindex],
],
),