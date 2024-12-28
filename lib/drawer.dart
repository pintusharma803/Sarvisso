import 'package:flutter/material.dart';
import 'package:sarvisso_app/MyHomePage.dart';
import 'package:sarvisso_app/about.dart';

class Mydrawer extends StatelessWidget {
  const Mydrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('boltuix'),
            accountEmail: Text('boltuix@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://storage.googleapis.com/a1aa/image/WMUlxAmdIzqoDtKds87Zc7eGVqXp07nefvz1E1tkKaZpgkePB.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home Page'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage(title: 'Home Page')),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.book),
            title: Text('Page 2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page2()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('Page 4'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page4()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Page 5'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page5()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.support),
            title: Text('Page 6'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Page6()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AboutUsPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}

// Dummy pages for navigation


class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Text('This is Page 2'),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 4'),
      ),
      body: Center(
        child: Text('This is Page 4'),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 5'),
      ),
      body: Center(
        child: Text('This is Page 5'),
      ),
    );
  }
}

class Page6 extends StatelessWidget {
  const Page6({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 6'),
      ),
      body: Center(
        child: Text('This is Page 6'),
    ),
);
}
}