import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<Map<String, dynamic>> azkarList = [
    {
      'title': 'أذكار الاستيقاظ من النوم',
      'items': [
        'الحمد لله الذي أحيانا بعدما أماتنا وإليه النشور.',
        'لا إله إلا الله وحده لا شريك له، له الملك وله الحمد.',
      ]
    },
    {
      'title': 'أذكار الصباح',
      'items': [
        'آية الكرسي: الله لا إله إلا هو الحي القيوم.',
        'رضيت بالله رباً وبالإسلام ديناً وبمحمد نبياً.',
      ]
    },
    {
      'title': 'أذكار المساء',
      'items': [
        'أمسينا وأمسى الملك لله والحمد لله.',
        'اللهم بك أمسينا وبك أصبحنا وبك نحيا وبك نموت.',
      ]
    },
    {
      'title': 'أذكار بعد الصلاة',
      'items': [
        'استغفر الله ثلاثاً، اللهم أنت السلام ومنك السلام.',
        'لا إله إلا الله وحده لا شريك له.',
      ]
    },
    {
      'title': 'أذكار بعد التشهد',
      'items': [
        'اللهم إني أعوذ بك من عذاب جهنم ومن عذاب القبر.',
        'اللهم إني ظلمت نفسي ظلماً كثيراً.',
      ]
    },
    {
      'title': 'قائمة التسبيح',
      'items': [
        'سبحان الله وبحمده سبحان الله العظيم.',
        'استغفر الله العظيم واتوب إليه.',
      ]
    },
    {
      'title': 'دعاء استفتاح الصلاة',
      'items': [
        'اللهم باعد بيني وبين خطاياي كما باعدت بين المشرق والمغرب.',
        'سبحانك اللهم وبحمدك وتبارك اسمك وتعالى جدك.',
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('تطبيق الأذكار'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: azkarList.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              child: ListTile(
                title: Text(
                  azkarList[index]['title'],
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        title: azkarList[index]['title'],
                        items: azkarList[index]['items'],
                      ),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String title;
  final List<String> items;

  const DetailsScreen({super.key, required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: const EdgeInsets.only(bottom: 10),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  items[index],
                  style: const TextStyle(fontSize: 18, height: 1.5),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
