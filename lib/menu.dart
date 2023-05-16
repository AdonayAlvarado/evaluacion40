import 'package:flutter/material.dart';
import 'package:evaluacion40/robot.dart';

import 'carta.dart';
import 'emoji.dart';
import 'eyes.dart';
import 'seguridad.dart';

class menu extends StatelessWidget {
  final categories = [
    {
      'title': 'ROBOT',
      'image':
          'https://images.pexels.com/photos/2599244/pexels-photo-2599244.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'title': 'eyes',
      'image':
          'https://images.pexels.com/photos/413998/pexels-photo-413998.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'title': 'carta',
      'image':
          'https://images.pexels.com/photos/211290/pexels-photo-211290.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'title': 'emoji',
      'image':
          'https://images.pexels.com/photos/6898860/pexels-photo-6898860.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
    {
      'title': 'seguridad',
      'image':
          'https://images.pexels.com/photos/4291/door-green-closed-lock.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 211, 255, 15),
      appBar: AppBar(
        title: Text('LOTIE CESAR ALVARADO 25-0916-2019'),
        backgroundColor: Color.fromARGB(255, 28, 187, 7),
      ),
      body: Padding(
        padding: const EdgeInsets.all(7.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categorías',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5.0),
            Container(
              height: categories.length * 50.0,
              width: categories.length * 100.0,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: Container(
                      width: 200,
                      child: CategoryCard(
                        title: categories[index]['title']!,
                        image: categories[index]['image']!,
                        onPressed: () {},
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  CategoryCard(
      {required this.title,
      required this.image,
      required Null Function() onPressed});

  void _navigateToCategory(BuildContext context) {
    switch (title) {
      case 'ROBOT':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => robot()),
        );
        break;
      case 'eyes':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => eyes()),
        );
        break;
      case 'carta':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => carta()),
        );
        break;
      case 'emoji':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => emoji()),
        );
        break;
      case 'seguridad':
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => seguridad()),
        );
        break;
      default:
        // Si se selecciona una categoría no válida, no hacemos nada.
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _navigateToCategory(context);
      },
      child: Container(
        height: 100.0,
        margin: EdgeInsets.only(bottom: 6.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 247, 247),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
