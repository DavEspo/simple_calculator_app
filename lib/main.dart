import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 10, 139, 237)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Calculator App'),
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
  int amount = 0;
  String operation = 'None';

  void display(int input, String sign) {
    if (sign == '+') {
      setState(() {
        operation = '+';
      });
    } else if (sign == '-') {
      setState(() {
        operation = '-';
      });
    } else if (sign == '*') {
      setState(() {
        operation = '*';
      });
    } else if (sign == '/') {
      setState(() {
        operation = '/';
      });
    } else if (sign == '=') {
      setState(() {
        operation = '=';
      });
    } else if (sign == 'Clear') {
      setState(() {
        operation = 'Clear';
        amount=0;
      });
    } else {
      setState(() {
        if (operation == '+') {
          amount+=input;
        } else if (operation == '-') {
          amount-=input;
        } else if (operation == '*') {
          amount*=input;
        } else if (operation == '/') {
          amount=amount~/input;
        } else {
          amount=input;
        }
        operation='None';
      });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Text(
              '$amount ',
              style: TextStyle(fontSize: 70)
            ),
            SizedBox(
              height:20
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => display(7, 'None'),
                  child: Text(
                    '7',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(8, 'None'),
                  child: Text(
                    '8',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(9, 'None'),
                  child: Text(
                    '9',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(10, '/'),
                  child: Text(
                    '/',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
              ]
            ),
            SizedBox(
              height:20
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => display(4, 'None'),
                  child: Text(
                    '4',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(5, 'None'),
                  child: Text(
                    '5',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(6, 'None'),
                  child: Text(
                    '6',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(10, '*'),
                  child: Text(
                    '*',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
              ]
            ),
            SizedBox(
              height:20
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => display(1, 'None'),
                  child: Text(
                    '1',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(2, 'None'),
                  child: Text(
                    '2',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(3, 'None'),
                  child: Text(
                    '3',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(10, '-'),
                  child: Text(
                    '-',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
              ]
            ),
            SizedBox(
              height:20
            ),
            Row(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () => display(10, 'Clear'),
                  child: Text(
                    'C',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(0, 'None'),
                  child: Text(
                    '0',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(10, '='),
                  child: Text(
                    '=',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
                ElevatedButton(
                  onPressed: () => display(10, '+'),
                  child: Text(
                    '+',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(100, 80),
                    shape: CircleBorder(),
                    backgroundColor: const Color.fromARGB(255, 94, 198, 243)
                  )
                ),
              ]
            ),
          ]
        ),
      ),
    );
  }
}
