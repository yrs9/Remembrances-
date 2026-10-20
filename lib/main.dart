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
        'الحمد لله الذي أحيانا بعدما أماتنا وإليه النشور. (رواه البخاري)',
        'لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير، سبحان الله، والحمد لله، ولا إله إلا الله، والله أكبر، ولا حول ولا قوة إلا بالله العلي العظيم، رب اغفر لي.',
      ],
    ),
    AzkarCategory(
      title: 'أذكار الصباح',
      icon: Icons.wb_twilight,
      items: [
        'آية الكرسي: اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ...',
        'قراءة سورة الإخلاص، الفلق، والناس (3 مرات).',
        'أصبحنا وأصبح الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير.',
        'اللهم بك أصبحنا، وبك أمسينا، وبك نحيا، وبك نموت وإليك النشور.',
      ],
    ),
    AzkarCategory(
      title: 'أذكار المساء',
      icon: Icons.nights_stay_outlined,
      items: [
        'آية الكرسي: اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ...',
        'قراءة سورة الإخلاص، الفلق، والناس (3 مرات).',
        'أمسينا وأمسى الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير.',
        'اللهم بك أمسينا، وبك أصبحنا، وبك نحيا، وبك نموت وإليك المصير.',
      ],
    ),
    AzkarCategory(
      title: 'أذكار بعد الصلاة',
      icon: Icons.mosque_outlined,
      items: [
        'أستغفر الله (ثلاثاً)، اللهم أنت السلام ومنك السلام، تباركت يا ذا الجلال والإكرام.',
        'لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، اللهم لا مانع لما أعطيت، ولا معطي لما منعت، ولا ينفع ذا الجد منك الجد.',
        'التسبيح: سبحان الله (33)، الحمد لله (33)، الله أكبر (33)، ثم تمام المائة
