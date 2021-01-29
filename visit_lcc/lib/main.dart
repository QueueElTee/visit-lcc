import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Sub Widgets

    //Beginning of Title Section
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            // 1
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 32),
                  child: Text(
                    'Lekki Conservation Center',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  'Lagos, Nigeria',
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                )
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          Text('41')
        ],
      ),
    );
    //End of Title Section

    //Button Section
    Color color = Colors.green;

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(color, Icons.call, 'CALL'),
          _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColumn(color, Icons.share, 'SHARE')
        ],
      ),
    );
    //End of Button Section

    //Text Section
    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: Text(
        'Lekki Conservation Centre (LCC) is a 78-hectare (190-acre) Natural Resource Conservation in Lekki, Lagos State. The reserve area is located on Lekki Peninsula, next to the Lekki Lagoon, and near the Lagos Lagoon. It protects the wetlands of the Lekki peninsula which consists of swamp and savannah habitats. Approaching the reserve, there\'s a boulevard of coconut trees which leads to a well laid out car and Visitors Park. It is endowed with an abundance of plant and animal life. Its huge tract of wetlands is set aside for wildlife viewing. Raised walkways enable viewing of animals. There is also a conservation center and a library.',
        softWrap: true,
      ),
    );
    //End of Text Section

    return MaterialApp(
      title: 'Flutter layout demo',
      theme: ThemeData(
        primaryColor: Colors.green[900],
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter layout demo'),
          ),
          body: ListView(
            children: [
              Image.asset(
                'images/forest.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleSection,
              buttonSection,
              textSection,
            ],
          )),
    );
  }

  //Button Section helper method
  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
                fontSize: 12, fontWeight: FontWeight.w400, color: color),
          ),
        ),
      ],
    );
  }
}
