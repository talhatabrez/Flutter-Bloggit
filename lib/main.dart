// main.dart
import 'package:flutter/material.dart';
import 'home.dart';
import 'about.dart';
import 'categories.dart';
import 'social.dart';
import 'loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.windows,
  );
  runApp(const myApp());
}

class myApp extends StatelessWidget{
  const myApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Bloggit!',
      //home: HomePage(),
      routes: {
        '/': (context) => Login(),
        '/home': (context) => HomeScreen(),
        '/categories': (context) => Categories(),
        '/about': (context) => About(),
        '/social': (context) => SocialMedia(),
        '/login': (context) => Login(),
      },
    );
  }
}

// class HomePage extends StatelessWidget{
//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text('Bloggit!', style: TextStyle(color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold)), backgroundColor: Colors.green,),
//       backgroundColor: Colors.white,
//       drawer: Drawer(
//         child: ListView(
//           padding: EdgeInsets.zero,
//           children: [
//             const DrawerHeader(
//               decoration: BoxDecoration(color: Colors.green),
//               child: Text('Have fun blogging', style: TextStyle(color: Colors.white, fontSize: 30)),
//             ),
//             ListTile(
//               title: const Text('Home'),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.pushNamed(context, '/home');
//               }
//             ),
//             ListTile(
//               title: const Text('Categories'),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.pushNamed(context, '/categories');
//               }
//             ),
//             ListTile(
//               title: const Text('About'),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.pushNamed(context, '/about');
//               }
//             ),
//             ListTile(
//               title: const Text('Social Media'),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.pushNamed(context, '/social');
//               }
//             ),
//             ListTile(
//               title: const Text('Login'),
//               onTap: () {
//                 Navigator.pop(context);
//                 Navigator.push(context, MaterialPageRoute(builder: (context) => Login()),);
//               }
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }
