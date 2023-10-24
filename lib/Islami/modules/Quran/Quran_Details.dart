import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:untitled/Islami/modules/Quran/Quran.dart';

import '../../core/provider/app_provider.dart';

class QuranDetails extends StatefulWidget {
  static const String routName = "QuranDetails";

  const QuranDetails({super.key});

  @override
  State<QuranDetails> createState() => _QuranDetailsState();
}

class _QuranDetailsState extends State<QuranDetails> {
  String content = '';
  List<String> allVerses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetail;
    if (content.isEmpty) readFiles(args.SuraNumber);

    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var appProvider = Provider.of<AppProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            appProvider.isDarkTheme()
                ? 'assets/images2/dark_bg@3x.png'
                : "assets/images2/default.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('إسلامي'),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(left: 30, right: 30, top: 30, bottom: 100),
          padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: theme.colorScheme.onBackground.withOpacity(0.9),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة${args.SuraName}",
                    style: theme.textTheme.bodyLarge?.copyWith(
                      color: theme.colorScheme.onSecondary,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.play_circle,
                    size: 32,
                    color: theme.colorScheme.onSecondary,
                  ),
                ],
              ),
              const Divider(
                endIndent: 40,
                indent: 40,
                thickness: 1.5,
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: allVerses.length,
                  itemBuilder: (context, index) => Text(
                    "${allVerses[index]} (${index + 1})",
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.colorScheme.onSecondary,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  readFiles(String index) async {
    String text = await rootBundle.loadString('assets/files/$index.txt');
    content = text;
    setState(() {
      content = text;
      allVerses = content.split("\n");
    });
    print(text);
  }
}
