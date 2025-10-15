import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  final List<Map<String, String>> landmarks = [
    {
      'image':
      'https://images.unsplash.com/photo-1595426496987-37c7113b24a6?ixlib=rb-4.1.0&ixid=M3wx'
          'MjA3fDB8MHxzZWFyY2h8MTh8fHBha2lzdGFufGVufDB8fDB8fHww&auto=format&fit=crop&q=60&w=600',
      'name': 'Minar e Pakistan'
    },
    {
      'image':
      'https://images.unsplash.com/photo-1592298285277-64da3dc70efb?ixlib=rb-4.1.0&ixid=M3wx'
          'MjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&q=80&w=764',
      'name': 'Kashmir Meadows'
    },
    {
      'image':
      'https://plus.unsplash.com/premium_photo-1697730196206-7d8f455766bf?ixlib=rb-4.1.0&ixid='
          'M3wxMjA3fDB8MHxzZWFyY2h8MzN8fHBha2lzdGFufGVufDB8fDB8fHww&auto=format&fit=crop&q=60&w=600',
      'name': 'Faisal Masjid'
    },
    {
      'image':
      'https://images.unsplash.com/photo-1572099259127-766d3444c234?ixlib=rb-4.1.0&ixid=M3wx'
          'MjA3fDB8MHxzZWFyY2h8NDB8fHBha2lzdGFufGVufDB8fDB8fHww&auto=format&fit=crop&q=60&w=600',
      'name': 'Swat Meadows'
    },
    {
      'image':
      'https://plus.unsplash.com/premium_photo-1723575880167-1b2c0925c921?ixlib=rb-4.1.0&ixid=M3wx'
          'MjA3fDB8MHxzZWFyY2h8OXx8UGFraXN0YW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&q=60&w=600',
      'name': 'Gilgit River'
    },
    {
      'image':
      'https://images.unsplash.com/photo-1550586678-f7225f03c44b?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8'
          'MHxzZWFyY2h8NHx8UGFraXN0YW58ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&q=60&w=600',
      'name': 'Fairy Meadows'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        childAspectRatio: 0.8,
      ),
      itemCount: landmarks.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  landmarks[index]['image']!,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            SizedBox(height: 5),
            Text(
              landmarks[index]['name']!,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        );
      },
    );
  }
}
