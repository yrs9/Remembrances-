import 'package:flutter/material.dart';

void main() {
  runApp(const AzkarApp());
}

class AzkarApp extends StatelessWidget {
  const AzkarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'تطبيق الأذكار',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF0F5132),
          brightness: Brightness.light,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class AzkarCategory {
  final String title;
  final IconData icon;
  final List<String> items;

  AzkarCategory({
    required this.title,
    required this.icon,
    required this.items,
  });
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<AzkarCategory> categories = [
    AzkarCategory(
      title: 'أذكار الاستيقاظ من النوم',
      icon: Icons.wb_sunny_outlined,
      items: [
        'الحمد لله الذي أحيانا بعدما أماتنا وإليه النشور.',
        'لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير.',
      ],
    ),
    AzkarCategory(
      title: 'أذكار الصباح',
      icon: Icons.wb_twilight,
      items: [
        'آية الكرسي: الله لا إله إلا هو الحي القيوم لا تأخذه سنة ولا نوم...',
        'قراءة سورة الإخلاص، الفلق، والناس (3 مرات).',
        'أصبحنا وأصبح الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له.',
        'اللهم بك أصبحنا، وبك أمسينا، وبك نحيا، وبك نموت وإليك النشور.',
      ],
    ),
    AzkarCategory(
      title: 'أذكار المساء',
      icon: Icons.nights_stay_outlined,
      items: [
        'آية الكرسي: الله لا إله إلا هو الحي القيوم...',
        'قراءة سورة الإخلاص، الفلق، والناس (3 مرات).',
        'أمسينا وأمسى الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له.',
        'اللهم بك أمسينا، وبك أصبحنا، وبك نحيا، وبك نموت وإليك المصير.',
      ],
    ),
    AzkarCategory(
      title: 'أذكار بعد الصلاة',
      icon: Icons.mosque_outlined,
      items: [
        'أستغفر الله (3 مرات)، اللهم أنت السلام ومنك السلام، تباركت يا ذا الجلال والإكرام.',
        'لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير.',
        'سبحان الله (33)، الحمد لله (33)، الله أكبر (33).',
      ],
    ),
    AzkarCategory(
      title: 'أذكار بعد التشهد',
      icon: Icons.menu_book_outlined,
      items: [
        'اللهم إني أعوذ بك من عذاب جهنم، ومن عذاب القبر، ومن فتنة المحيا والممات.',
        'اللهم إني ظلمت نفسي ظلما كثيرا، ولا يغفر الذنوب إلا أنت، فاغفر لي وارحمني.',
      ],
    ),
    AzkarCategory(
      title: 'قائمة التسبيح',
      icon: Icons.touch_app_outlined,
      items: [
        'سبحان الله وبحمده، سبحان الله العظيم.',
        'أستغفر الله العظيم وأتوب إليه.',
        'لا حول ولا قوة إلا بالله العلي العظيم.',
        'اللهم صل وسلم وبارك على نبينا محمد.',
      ],
    ),
    AzkarCategory(
      title: 'دعاء استفتاح الصلاة',
      icon: Icons.front_hand_outlined
