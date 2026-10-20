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
      ],
    ),
    AzkarCategory(
      title: 'أذكار الصباح',
      icon: Icons.wb_twilight,
      items: [
        'آية الكرسي: «اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ لَا تَأْخُذُهُ سِنَةٌ وَلَا نَوْمٌ...»',
        'قراءة سورة الإخلاص، الفلق، والناس (3 مرات).',
        '«أصبحنا وأصبح الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير.»',
        '«اللهم بك أصبحنا، وبك أمسينا، وبك نحيا، وبك نموت وإليك النشور.»',
      ],
    ),
    AzkarCategory(
      title: 'أذكار المساء',
      icon: Icons.nights_stay_outlined,
      items: [
        'آية الكرسي: «اللَّهُ لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومُ...»',
        'قراءة سورة الإخلاص، الفلق، والناس (3 مرات).',
        '«أمسينا وأمسى الملك لله، والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير.»',
        '«اللهم بك أمسينا، وبك أصبحنا، وبك نحيا، وبك نموت وإليك المصير.»',
      ],
    ),
    AzkarCategory(
      title: 'أذكار بعد الصلاة',
      icon: Icons.mosque_outlined,
      items: [
        '«أستغفر الله (ثلاثاً)، اللهم أنت السلام ومنك السلام، تباركت يا ذا الجلال والإكرام.»',
        '«لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، اللهم لا مانع لما أعطيت، ولا معطي لما منعت، ولا ينفع ذا الجد منك الجد.»',
        'التسبيح: سبحان الله (33)، الحمد لله (33)، الله أكبر (33)، ثم تمام المائة: «لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير».',
      ],
    ),
    AzkarCategory(
      title: 'أذكار بعد التشهد',
      icon: Icons.menu_book_outlined,
      items: [
        '«اللهم إني أعوذ بك من عذاب جهنم، ومن عذاب القبر، ومن فتنة المحيا والممات، ومن شر فتنة المسيح الدجال.»',
        '«اللهم إني ظلمت نفسي ظلماً كثيراً، ولا يغفر الذنوب إلا أنت، فاغفر لي مغفرة من عندك وارحمني، إنك أنت الغفور الرحيم.»',
      ],
    ),
    AzkarCategory(
      title: 'قائمة التسبيح',
      icon: Icons.touch_app_outlined,
      items: [
        'سبحان الله وبحمده، سبحان الله العظيم.',
        'أستغفر الله العظيم وأتوب إليه.',
        'لا حول ولا قوة إلا بالله العلي العظيم.',
        'اللهم صلِّ وسلم وبارك على نبينا محمد.',
      ],
    ),
    AzkarCategory(
      title: 'دعاء استفتاح الصلاة',
      icon: Icons.front_hand_outlined,
      items: [
        '«اللهم باعد بيني وبين خطاياي كما باعدت بين المشرق والمغرب، اللهم نقني من خطاياي كما ينقى الثوب الأبيض من الدنس، اللهم اغسلني من خطاياي بالماء والثلج والبرد.»',
        '«سبحانك اللهم وبحمدك، وتبارك اسمك، وتعالى جدك، ولا إله غيرك.»',
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'حصن المسلم - الأذكار',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 2,
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: ListView.builder(
            itemCount: categories.length,
            itemBuilder: (context, index) {
              final category = categories[index];
              return Card(
                elevation: 2,
                margin: const EdgeInsets.symmetric(vertical: 8),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListTile(
                  contentPadding: const EdgeInsets.all(16),
                  leading: CircleAvatar(
                    radius: 26,
                    backgroundColor: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                    child: Icon(
                      category.icon,
                      color: Theme.of(context).colorScheme.primary,
                      size: 28,
                    ),
                  ),
                  title: Text(
                    category.title,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                  onTap: () {
                    if (category.title == 'قائمة التسبيح') {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CounterScreen(category: category),
                        ),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AzkarDetailScreen(category: category),
                        ),
                      );
                    }
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class AzkarDetailScreen extends StatelessWidget {
  final AzkarCategory category;

  const AzkarDetailScreen({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text(category.title),
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
        body: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: category.items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 1,
              margin: const EdgeInsets.only(bottom: 12),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  category.items[index],
                  style: const TextStyle(
                    fontSize: 17,
                    height: 1.6,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class CounterScreen extends StatefulWidget {
  final AzkarCategory category;

  const CounterScreen({super.key, required this.category});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int count = 0;
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('المسبحة الإلكترونية'),
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child:

