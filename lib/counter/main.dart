
// ###############################################
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import 'package:provider_lesson/counter_provider.dart';

// void main() {~
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => CounterProvider(),
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
//         home: const MyHomePage(title: 'Flutter Demo Home Page'),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     // final int newCounter = context.watch<CounterProvider>().counter; ini akan selelau dibuild ulang

//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: .center,
//           children: [
//             const Text('You have pushed the button this many times:'),
//             // Text(
//             //   '$newCounter',
//             //   style: Theme.of(context).textTheme.headlineMedium,
//             // ),
//             Consumer<CounterProvider>(
//               builder: (context, provider, child) {
//                 return Text(
//                   '${provider.counter}',
//                   style: Theme.of(context).textTheme.headlineMedium,
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: ButtonBar(
//         children: [
//           FloatingActionButton(
//             onPressed: () {
//               context.read<CounterProvider>().increment();
//             },
//             heroTag: 'increment',
//             tooltip: 'Increment',
//             child: const Icon(Icons.add),
//           ),
//           FloatingActionButton(
//             onPressed: () {
//               context.read<CounterProvider>().decrement();
//             },
//             heroTag: 'decrement',
//             tooltip: 'decrement',
//             child: const Icon(Icons.remove),
//           ),
//         ],
//       ),
//     );
//   }
// }
