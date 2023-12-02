import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_173/counter_provider.dart';
import 'package:provider_173/second_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => CounterProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("build called!!");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Provider'),
      ),
      body: Consumer<CounterProvider>(
        builder: (ctx, provider, child){

          var listData = provider.mData;

          return ListView.builder(
            itemCount: listData.length,
              itemBuilder: (_, index){

              return ListTile(
                title: Text('${listData[index]['title']}'),
                subtitle: Text('${listData[index]['desc']}'),
              );
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage(),));
        },
        child: Icon(Icons.navigate_next_sharp),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}


///
/// Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Consumer<CounterProvider>(
//                 builder: (ctx, provider, child){
//                   print('Consumer builder called!!');
//                   return Text(
//                     //'${Provider.of<CounterProvider>(context).getCountValue()}',
//                     //'${context.watch<CounterProvider>().getCountValue()}',
//                     '${provider.countValue}',
//                     style: Theme.of(context).textTheme.headlineMedium,
//                   );
//             })
//           ],
//         ),
//       ),
