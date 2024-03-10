import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Community And Social Sharing App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: SustaniablelivingPage(),
    );
  }
}

class SustaniablelivingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community And Social Sharing App'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Join Communities',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _ShareCard(
              title: 'Tip Of The Day',
              content: 'Use reusable bags when grocery shopping!',
            ),
            _ShareCard(
              title: 'Success Story',
              content: 'Reduce my house hold waste by 50% by composting and recycling!',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Share Achivement',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _CommunityCard(
              communityName: 'Eco Warriors',
              membersCount: 1200,
            ),
            _CommunityCard(
              communityName: 'Green Living Enthusiasts',
              membersCount: 800,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Share Achivements',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _Achivementcard(
              achivement: 'Planted 100 Trees',
              image: 'assets/tree.jpg', // add custom image
            ),
            _Achivementcard(
              achivement: 'Installed Solar Panels',
              image: 'assets/solar_panel.jpg' // add custom images
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Share On Social Media',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Add options Here
                }, 
              child: Text('Share'),
              ),
          ],
        ),
      ),
    );
  }
}

class _CommunityCard extends StatelessWidget {
  final String communityName;
  final int membersCount;

  const _CommunityCard({
    required this.communityName,
    required this.membersCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(communityName),
        subtitle: Text('$membersCount Members'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Navigate to community page
        },
      ),
    );
  }
}

class _ShareCard extends StatelessWidget {
  final String title;
  final String content;

  const _ShareCard({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(content),
          ],
        ),
      ),
    );
  }
}

class _Achivementcard extends StatelessWidget {
  final String achivement;
  final String image;

  const _Achivementcard({
    required this.achivement,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(image),
        title: Text(achivement),
      ),
    );
  }
}