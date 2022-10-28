import 'package:flutter/material.dart';
import 'package:navigation/page_three.dart';
import 'package:navigation/page_two.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late String returnedData = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          SizedBox(
            height: 40,
            child: ElevatedButton(
                onPressed: () async {
                  var result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PageTwo(data: 'Page Two')
                      )
                  );

                  setState(() {
                    returnedData = result;
                  });
                },
                child: const Text('Go To Page 2 (Stateful Widget)')
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 40,
            child: ElevatedButton(
                onPressed: () async {
                  var result = await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const PageThree(data: 'Page Three')
                      )
                  );

                  setState(() {
                    returnedData = result;
                  });
                },
                child: const Text('Go To Page 3 (Stateless Widget)')
            ),
          ),
          const SizedBox(height: 40),
          Text(returnedData,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
