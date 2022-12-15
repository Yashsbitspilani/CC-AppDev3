Column(
children: [
Container(
color: Colors.grey[700],
margin: const EdgeInsets.all(10.0),
child: Column(
children: [
Text('Artificial',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0)),
Text('Natural',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0)),
IconButton(
icon: Icon(Icons.delete),
padding: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
onPressed: () {
showDialog(
context: context,
builder: (BuildContext context) {
return Column(
children: [
AlertDialog(
title: Text(
"Do you really want to delete this?"),
),
],
);
}
);
},
),
],
),
),
Container(
color: Colors.grey[700],
margin: const EdgeInsets.all(10.0),
child: Column(
children: [
Text('Arrive',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0)),
Text('Depart',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0)),
IconButton(
icon: Icon(Icons.delete),
padding: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
onPressed: () {
showDialog(
context: context,
builder: (BuildContext context) {
return Column(
children: [
AlertDialog(
title: Text(
"Do you really want to delete this?"),
),
],
);
}
);
},
),
],
),
),
Container(
color: Colors.grey[700],
margin: const EdgeInsets.all(10.0),
child: Column(
children: [
Text('Interesting',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0)),
Text('Boring',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0)),
IconButton(
icon: Icon(Icons.delete),
padding: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
onPressed: () {
showDialog(
context: context,
builder: (BuildContext context) {
return Column(
children: [
AlertDialog(
title: Text(
"Do you really want to delete this?"),
),
],
);
}
);
},
),
],
),
),
Container(
color: Colors.grey[700],
margin: const EdgeInsets.all(10.0),
child: Column(
children: [
Text('Even',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0)),
Text('Odd',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0)),
IconButton(
icon: Icon(Icons.delete),
padding: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
onPressed: () {
showDialog(
context: context,
builder: (BuildContext context) {
return Column(
children: [
AlertDialog(
title: Text(
"Do you really want to delete this?"),
),
],
);
}
);
},
),
],
),
),
Container(
color: Colors.grey[700],
margin: const EdgeInsets.all(10.0),
child: Column(
children: [
Text('Alike',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 40.0)),
Text('Different',
textDirection: TextDirection.ltr,
textAlign: TextAlign.center,
),
Padding(
padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 20.0)),
IconButton(
icon: Icon(Icons.delete),
padding: EdgeInsets.fromLTRB(100.0, 0.0, 0.0, 0.0),
onPressed: () {
showDialog(
context: context,
builder: (BuildContext context) {
return Column(
children: [
AlertDialog(
title: Text(
"Do you really want to delete this?"),
actions: [
TextButton(onPressed: () {
setState(() {
data.remove(index);
});
},
child: Text("Yes")),
TextButton(onPressed: () {
Navigator.pop(context);
}, child: Text("No"))
],
),
],
);
}
);
}
),
],
),
),
]
);




showDialog(context: context, builder: (BuildContext context) {
return Column(

);
}
);