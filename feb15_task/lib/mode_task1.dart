import 'package:feb15_task/demo_scaffold_task2.dart';
import 'package:flutter/material.dart';

class ChangeMode extends StatefulWidget {
  const ChangeMode({super.key});

  @override
  State<ChangeMode> createState() => _ChangeModeState();
}

class _ChangeModeState extends State<ChangeMode> {
  bool isWhite = true;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: isWhite ? ThemeMode.light : ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: isWhite ? Colors.orange : Colors.black,
          centerTitle: true,
          title: const Text(
            'Mode change',
            style: TextStyle(
              color: Colors.red,
            ),
          ),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    setState(() {
                      isWhite = false;
                    });
                  },
                  icon: const Icon(
                    Icons.dark_mode,
                    size: 50,
                  )),
              const SizedBox(
                width: 60,
              ),
              IconButton(
                  onPressed: () {
                    setState(() {
                      isWhite = true;
                    });
                  },
                  icon: const Icon(
                    Icons.light_mode,
                    size: 50,
                  )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DemoScaffold(),
                ));
          },
          child: const Icon(Icons.navigate_next),
        ),
      ),
    );
  }
}

// import 'package:feb15_task/demo_scaffold_task2.dart';
// import 'package:feb15_task/theme/dark_theme.dart';
// import 'package:feb15_task/theme/light_theme.dart';
// import 'package:flutter/material.dart';
//
// class ChangeMode extends StatefulWidget {
//   const ChangeMode({super.key});
//
//   @override
//   State<ChangeMode> createState() => _ChangeModeState();
// }
//
// class _ChangeModeState extends State<ChangeMode> {
//   @override
//   Widget build(BuildContext context) {
//     var appbarBack = Theme.of(context).colorScheme.primary;
//     var back = Theme.of(context).colorScheme.background;
//     return Scaffold(
//       backgroundColor: back,
//       appBar: AppBar(
//         backgroundColor: appbarBack,
//         centerTitle: true,
//         title: const Text(
//           'Mode change',
//           style: TextStyle(
//             color: Colors.red,
//           ),
//         ),
//       ),
//       body: Center(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             IconButton(
//                 onPressed: () {
//                   setState(() {
//                     darkTheme = ThemeData(
//                       brightness: Brightness.dark,
//                     );
//                   });
//                 },
//                 icon: const Icon(
//                   Icons.dark_mode,
//                   size: 50,
//                 )),
//             const SizedBox(
//               width: 60,
//             ),
//             IconButton(
//                 onPressed: () {
//                   setState(() {
//                     lightTheme = ThemeData(
//                       colorScheme: ColorScheme.light(
//                         background: Colors.white,
//                         primary: Colors.orange,
//                       ),
//                     );
//                   });
//                 },
//                 icon: const Icon(
//                   Icons.light_mode,
//                   size: 50,
//                 )),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const DemoScaffold(),
//               ));
//         },
//         child: const Icon(Icons.navigate_next),
//       ),
//     );
//   }
// }
