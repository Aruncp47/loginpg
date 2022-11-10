import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(debugShowCheckedModeBanner: false,
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var images = [
    'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Android_robot.svg/1745px-Android_robot.svg.png',
    'https://cdn-images-1.medium.com/max/1200/1*5-aoK8IBmXve5whBQM90GA.png',
    'https://cdn.iconscout.com/icon/free/png-256/ios-apple-572947.png',
    'https://kinsta.com/wp-content/uploads/2018/05/what-is-php-3-1.png',
    'https://miro.medium.com/max/800/1*bc9pmTiyKR0WNPka2w3e0Q.png'
  ];
  var titles = ['Android', 'Flutter', 'IOS', 'PHP', 'Node'];
  var check = [false, false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CheckBox ListTile Demo",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),centerTitle: true ,backgroundColor: Colors.white60,
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(elevation: 3,
              child: CheckboxListTile(
                secondary: CircleAvatar(
                  backgroundImage: NetworkImage(images[index]),backgroundColor: Colors.transparent,
                ),
                title: Text(titles[index],
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                value: check[index],
                onChanged: (value) => setState(() {
                  check[index] = value!;
                }),
              ),
            ),
          );
        },
      ),
    );
  }
}
