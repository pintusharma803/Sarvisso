import 'package:flutter/material.dart';
import 'package:sarvisso_app/drawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Us',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AboutUsPage(),
    );
  }
}

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mydrawer()),
              );
            }),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Who we are',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            Text(
              'We are a leading organization dedicated to providing innovative solutions. Our team consists of skilled professionals who are passionate about delivering exceptional results. We believe in the power of collaboration and strive to create a positive impact in the industry.',
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            Wrap(
              alignment: WrapAlignment.center,
              spacing: 16,
              runSpacing: 16,
              children: [
                InfoCard(title: '50,000+', subtitle: 'Total Members'),
                InfoCard(title: '12 Million+', subtitle: 'Projects Completed'),
                InfoCard(title: '60', subtitle: 'Countries'),
                InfoCard(title: '4', subtitle: 'Continents'),
              ],
            ),
            SizedBox(height: 24),
            Text(
              'Our Leadership Team',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16),
            ResponsiveGrid(
              children: [
                LeadershipCard(
                  name: 'Pintu Kumar Sharma',
                  title: 'Co-Founder and CTO',
                  description:
                      'Pintu supports Shivanand in leading the technical development of the platform and ensures the robustness. As Co-Founder, Pintu also contributes to the strategic growth of the company.',
                  imageUrl:
                      'https://media.licdn.com/dms/image/v2/D4D03AQHY18IVPg-FpA/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1695576894454?e=2147483647&v=beta&t=arHH4qJTleX53YzBZ62HYhgL95yNPvXqy42bPdLVqjY',
                ),
                LeadershipCard(
                  name: 'Shivanand Kumar',
                  title: 'CEO and CTO',
                  description:
                      'As the CEO, Shivanand oversees the overall direction of the company and makes strategic decisions for the technology roadmap, product development, and the team to achieve the company’s business and financial goals.',
                  imageUrl:
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1hcDUnn8DjiGw1PYa6LBMLhpaazWcawdmBUeKHDEl8RBIHUsc1z1_bN6DZvxqITA41NI&usqp=CAU',
                ),
                LeadershipCard(
                  name: 'Abhinash Gond',
                  title: 'CTO and COO',
                  description:
                      'Abhinash is responsible for the technical direction and development of the company’s products and services. He ensures that the technology strategy aligns with the business objectives.',
                  imageUrl:
                      'https://media.licdn.com/dms/image/v2/D5603AQEKVtw7GSnxxA/profile-displayphoto-shrink_400_400/profile-displayphoto-shrink_400_400/0/1705234952620?e=1740614400&v=beta&t=4UM9QYyc64o9gxlISUmf42WtKQG3e0Yuzku5dwtq9hs',
                ),
                LeadershipCard(
                  name: 'Neha',
                  title: 'CFO and CMO',
                  description:
                      'Neha oversees the company’s operations and ensures that the business processes are efficient and effective. She works closely with the leadership team to drive the company’s growth.',
                  imageUrl:
                      'https://media.licdn.com/dms/image/v2/D5622AQFl1AoTckgiBQ/feedshare-shrink_800/B56ZQJaalFHoAg-/0/1735324708756?e=1738195200&v=beta&t=cTwn_vmY-yNMIhOcAA7l-d5SQPxNsFky8nW9Q254-lg',
                ),
                LeadershipCard(
                  name: 'Anamika Pandey',
                  title: 'CFO and CMO',
                  description:
                      'Neha oversees the company’s operations and ensures that the business processes are efficient and effective. She works closely with the leadership team to drive the company’s growth.',
                  imageUrl:
                      'https://media.licdn.com/dms/image/v2/D5622AQHzDJ3qJwOG2A/feedshare-shrink_800/B56ZQJZELDGsAg-/0/1735324356392?e=2147483647&v=beta&t=RBtWQZtsI6op8IeHheH2QEsGKQcnnhCKRzKSvm9Gu_0',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const InfoCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          subtitle,
          style: TextStyle(color: Colors.green),
        ),
      ],
    );
  }
}

class LeadershipCard extends StatefulWidget {
  final String name;
  final String title;
  final String description;
  final String imageUrl;

  const LeadershipCard({super.key, 
    required this.name,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  _LeadershipCardState createState() => _LeadershipCardState();
}

class _LeadershipCardState extends State<LeadershipCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        transform:
            _isHovered ? (Matrix4.identity()..scale(1.05)) : Matrix4.identity(),
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: _isHovered ? Colors.black26 : Colors.black12,
              blurRadius: _isHovered ? 12 : 8,
              spreadRadius: _isHovered ? 4 : 2,
            ),
          ],
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(widget.imageUrl),
            ),
            SizedBox(height: 8),
            Text(
              widget.name,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.title,
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 8),
            Text(
              widget.description,
              style: TextStyle(color: Colors.grey[600]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}

class ResponsiveGrid extends StatelessWidget {
  final List<Widget> children;

  const ResponsiveGrid({super.key, required this.children});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 1200) {
          return GridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: children,
          );
        } else if (constraints.maxWidth >= 800) {
          return GridView.count(
            crossAxisCount: 3,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: children,
          );
        } else if (constraints.maxWidth >= 600) {
          return GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 16,
            crossAxisSpacing: 16,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: children,
          );
        } else {
          return Column(
            children: children
                .map((child) => Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: child,
                    ))
                .toList(),
          );
        }
    },
);}
}