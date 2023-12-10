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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      // appBar: AppBar(
      //   // TRY THIS: Try changing the color here to a specific color (to
      //   // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
      //   // change color while the other colors stay the same.
      //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      //   // Here we take the value from the MyHomePage object that was created by
      //   // the App.build method, and use it to set our appbar title.
      //   title: Text(widget.title),
      // ),
      resizeToAvoidBottomInset: false,

      body: const Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          //
          // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
          // action in the IDE, or press "p" in the console), to see the
          // wireframe for each widget.
          // mainAxisAlignment: MainAxisAlignment.start,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            // Text(word),
            // Login()
            SafeArea(child: Task()),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          tooltip: 'Increment',
          label: const Text("New Task"),
          icon: const Icon(Icons.add)),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mic),
            label: 'Add task',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none),
            label: 'Noti',
          ),
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class Task extends StatefulWidget {
  const Task({Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int? selected;
  // ignore: prefer_typing_uninitialized_variables
  var taskSelected;

  var task = [
    {
      "taskName": "Send email to Jenny",
      "priority": "High",
      "taskDay": "yesterday",
      "category": "Work",
      "id": 1
    },
    {
      "taskName": "Remove wallpaper",
      "priority": "High",
      "taskDay": "yesterday",
      "category": "Home renovation",
      "id": 2
    },
    {
      "taskName": "Write report for Tuesday",
      "priority": "High",
      "taskDay": "Today",
      "category": "Work",
      "id": 3
    },
    {
      "taskName": "Cheese",
      "priority": "Medium",
      "taskDay": "Today",
      "category": "Grocery",
      "id": 4
    },
    {
      "taskName": "Buy wallpaper",
      "priority": "Low",
      "taskDay": "Today",
      "category": "Market shopping",
      "id": 5
    },
    {
      "taskName": "Send email to Jenny",
      "priority": "High",
      "taskDay": "yesterday",
      "category": "Work",
      "id": 6
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      // crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.purple[50],
          // alignment:AlignmentDirectional.center,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: const Icon(Icons.menu),
                  alignment: FractionalOffset.bottomRight,
                ),
                const Spacer(),
                const Text(
                  "Google Tasks",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                const Spacer(),
                Container(
                  alignment: Alignment.bottomCenter,
                  child: const CircleAvatar(
                    backgroundColor: Colors.red,
                    backgroundImage: NetworkImage("https://i.pravatar.cc/300"),
                  ),
                )
              ],
            ),
          ),
        ),
        Container(
          alignment: AlignmentDirectional.topStart,
          padding: const EdgeInsets.only(top: 10, left: 12),
          child: const Text(
            "Today",
            textAlign: TextAlign.start,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5, left: 3),
          child: Row(children: [
            const Padding(
              padding: EdgeInsets.only(left: 12),
            ),
            InputChip(
              label: const Text("All"),
              selected: 1 == selected,
              // ignore: avoid_print
              onSelected: (bool select) => {
                setState(() {
                  selected = 1;
                })
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
            ),
            InputChip(
              label: const Text("OverDue"),
              selected: 2 == selected,
              // ignore: avoid_print
              onSelected: (bool select) => {
                setState(() {
                  selected = 2;
                })
              },
            ),
            const Padding(
              padding: EdgeInsets.only(left: 12),
            ),
            InputChip(
              label: const Text("Today"),
              selected: 3 == selected,
              // ignore: avoid_print
              onSelected: (bool select) => {
                setState(() {
                  selected = 3;
                })
              },
            )
          ]),
        ),
        Container(
          alignment: AlignmentDirectional.topStart,
          padding: const EdgeInsets.only(top: 15, left: 12),
          child: const Row(
            children: [
              Text(
                "Sortd by priority",
                textAlign: TextAlign.start,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
              ),
              Icon(Icons.arrow_downward)
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(1),
          alignment: Alignment.topLeft,
          child: ListView.builder(
            itemCount: task.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return RadioListTile(
                  contentPadding: const EdgeInsets.only(
                      left: 5, right: 20, top: 10, bottom: 10),
                  dense: true,
                  title: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${task[index]["taskDay"]}".toUpperCase(),
                          style: const TextStyle(fontSize: 10),
                        ),
                        Text(
                          "${task[index]["taskName"]}",
                          style: const TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                  secondary: Text(
                    "${task[index]["category"]}",
                  ),
                  subtitle: Text("${task[index]["priority"]} priority"),
                  value: task[index]["id"],
                  groupValue: taskSelected,
                  onChanged: (task) {
                    setState(() {
                      taskSelected = task;
                    });
                  });
            },
          ),
        )
      ],
    );
  }
}
