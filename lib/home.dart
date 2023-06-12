import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context).copyWith(
        textTheme: Theme.of(context).textTheme.apply(fontSizeFactor: 1.3));

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text('PA-28 Preflight'),
        bottom: PreferredSize(
          child: ListBody(
            children: [
              LinearProgressIndicator(
                value: 0.1,
              ),
              Row(
                children: [
                  SizedBox(width: 20.0),
                  Text("External", style: themeData.textTheme.titleMedium),
                  Spacer(),
                  IconButton(
                    icon: Badge(
                        label: Text('2'),
                        child:
                            Icon(Icons.snooze, semanticLabel: "snoozed steps")),
                    onPressed: () {},
                  ),
                ],
              ),
              LinearProgressIndicator(
                value: 0.8,
              ),
              Row(
                children: [
                  SizedBox(width: 20.0),
                  Text("Port Wing", style: themeData.textTheme.titleMedium),
                  Spacer(),
                  IconButton(
                    icon: Badge(
                        label: Text('1'),
                        child:
                        Icon(Icons.snooze, semanticLabel: "snoozed steps")),
                    onPressed: () {},
                  ),
                ],
              ),
              LinearProgressIndicator(
                value: 0.4,
              ),
            ],
          ),
          preferredSize: Size.fromHeight(120.0),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            semanticLabel: "menu",
          ),
          onPressed: () {
            developer.log('global menu button pressed');
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Badge(
                label: Text('3'),
                child: Icon(Icons.snooze, semanticLabel: "snoozed steps")),
            onPressed: () {},
          )
        ],
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              MarkdownBody(
                data: """
# Fuel Tank

* **Visually check contents**
* Fuel cap secured
* Drain is checked and closed
""",
                // ${loremIpsum(paragraphs: 2, words: 40)}
                styleSheet: MarkdownStyleSheet.fromTheme(themeData),
                // loremIpsum(paragraphs: 5, words: 600),
              ),
              SizedBox(height: 8.0),
              Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          border: const OutlineInputBorder(),
                          labelText: "Port Fuel Tank Qty",
                        ),
                      ),
                      // SizedBox(height: 8.0),
                      // TextField(
                      //   decoration: InputDecoration(
                      //     border: const OutlineInputBorder(),
                      //     labelText: "Right Fuel Tank Qty",
                      //   ),
                      // ),
                      SizedBox(height: 8.0),
                      Flex(
                        direction: Axis.horizontal,
                        children: [
                          OutlinedButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.snooze),
                            label: Text("Snooze"),
                          ),
                          Spacer(),
                          FilledButton.icon(
                            onPressed: () {},
                            icon: Icon(Icons.navigate_next),
                            label: Text("Next"),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Steps extends StatefulWidget {
  const Steps({super.key});

  @override
  State<Steps> createState() => _StepsState();
}

class _StepsState extends State<Steps> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
}