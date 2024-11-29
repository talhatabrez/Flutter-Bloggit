// categories.dart
import 'package:flutter/material.dart';
import 'cat_autombiles.dart';

void main() {
  runApp(Categories());
}

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bloggit!',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green),
      // initialRoute: '/',
      routes: {
        '/': (context) => CategoryPage(),
        '/automobiles': (context) => CatAutombiles(),
        '/beauty': (context) => BlogPage(title: 'Beauty Blogs'),
        '/movies': (context) => BlogPage(title: 'Movies Blogs'),
      },
    );
  }
}

class CategoryPage extends StatelessWidget {
  final List<Map<String, dynamic>> categories = [
    {'title': 'Automobiles', 'route': '/automobiles'},
    {'title': 'Beauty', 'route': '/beauty'},
    {'title': 'Movies', 'route': '/movies'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Categories', style: TextStyle(fontWeight: FontWeight.bold))),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, 
            crossAxisSpacing: 38.0, 
            mainAxisSpacing: 38.0, 
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            final category = categories[index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, category['route']);
              },
              child: Card(
                color: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Center(
                  child: Text(
                    category['title'],
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class BlogPage extends StatelessWidget {
  final String title;

  const BlogPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Center(
        child: Text(
          'Welcome to $title ',
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
