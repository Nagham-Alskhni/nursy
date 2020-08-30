Padding(
padding: const EdgeInsets.only(top: 500),
child: ListView.builder(
itemBuilder: (context, index) {
return Container(
height: 70,
//                      width: 50,
child: Column(
mainAxisAlignment: MainAxisAlignment.start,
children: [
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(
left: 20,
),
child: RichText(
text: TextSpan(children: <TextSpan>[
TextSpan(
text: 'User Name',
style: TextStyle(
color: Colors.black,
fontWeight: FontWeight.bold),
),
TextSpan(
text: '\n start Date: 28 july',
style: TextStyle(color: Colors.grey),
)
]),
),
),
Padding(
padding: const EdgeInsets.only(right: 20),
child: Icon(Icons.arrow_downward),
)
],
),
SizedBox(
height: 10,
),
Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
children: [
Padding(
padding: const EdgeInsets.only(left: 20),
child: RichText(
text: TextSpan(children: <TextSpan>[
TextSpan(
text: '16',
style: TextStyle(color: Colors.blueAccent),
),
TextSpan(
text: '/30 Project',
style: TextStyle(color: Colors.black),
)
]),
),
),
//                              Text('160/200 Project'),
],
)
],
),
);
},
itemCount: listViewExample.length),
),