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
        '«الحَمْدُ للهِ الذي أحيانا بعدما أماتنا وإليه النشور.» (رواه البخاري)',
        '«لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير، سبحان الله، والحمد لله، ولا إله إلا الله، والله أكبر، ولا حول ولا قوة إلا بالله العلي العظيم، رب اغفر لي.»',
