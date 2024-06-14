import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
void main() {
  runApp(const Whatsapp());
}
class Whatsapp extends StatelessWidget {
  const Whatsapp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'WhatsApp'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  List<String> myName = <String>[
  "Sarvesh Mehta",
  "Aarav Mehta",
  "Madhavi Mehta",
  "Bijal Mehta",
  "Roon Stevefry",
  "Sunita Ravat",
  "Sri Bhavra",
  "Santosh Rajni",
  "Sanjay Shah",
  "Sunil Gaveskar",
  "Rajesh Kapoor",
  "Gita Faugat",
    "John Kennedy"
  ];
//Functions
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
        CircleAvatar(
        backgroundImage: NetworkImage(
        "https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/WhatsApp_icon.png/479px-WhatsApp_icon.png"),
          radius: 20,
        ),
        Container(
          width: 10,
        ),
        Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
        ],
      ),
      backgroundColor: Colors.green[200],
    ),
    body: ListView.builder(
    itemCount: myName.length,
    itemBuilder: (context, index) {
    return Card(
    child: ListTile(
    leading: CircleAvatar(
    backgroundImage:
    AssetImage("assets/images/icon.png"),
    radius: 20,
    ),
    title: Text(myName[index]),
    subtitle: Text("1:${index * 6 + 10} PM"),
    trailing: Icon(Icons.phone),
    onTap: (){
    Fluttertoast.showToast(
    toastLength: Toast.LENGTH_SHORT,
    msg: "Calling ${myName[index]}",
    timeInSecForIosWeb: 5,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    gravity: ToastGravity.BOTTOM,
    fontSize: 20,
    );
    }
    ),
    );
    },
    ),
    bottomNavigationBar: Container(
    color: Colors.green[200],
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Icon(
    Icons.camera_alt_outlined,
    size: 20,
    color: Colors.black,
    ),
    Text(
    "Status",
    style: TextStyle(color: Colors.black, fontSize:
    20),
    ),
    Text(
    "Chats",
    style: TextStyle(color: Colors.black, fontSize:
    20),
    ),
    Text(
    "Calls",
    style: TextStyle(
    color: Colors.white60,
    fontWeight: FontWeight.bold,
    fontSize: 20,
    decoration: TextDecoration.overline,
    decorationColor: Colors.blueGrey,
    decorationThickness: 2.5,
    decorationStyle: TextDecorationStyle.solid,
    height: 2.5,
    ),
    ),
    ],
    ),
    ),
    );
  }
}