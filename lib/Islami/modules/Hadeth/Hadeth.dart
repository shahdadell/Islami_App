import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:untitled/Islami/modules/Hadeth/Hadeth_Details.dart';

class HadethView extends StatefulWidget {


  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethContent> allHadeth = [];

  @override
  Widget build(BuildContext context) {
    if (allHadeth.isEmpty) readFile();

    var theme = Theme.of(context);

    return Column(
      children: [
        Image.asset('assets/images2/hadeth_logo@3x.png',
          scale: 3,
        ),
        const Divider(
          thickness: 2,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Row(
          children: [
            Expanded(
              child: Text('الأحاديث',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyMedium,
              ),
            ),
          ],
        ),
        const Divider(
          thickness: 2,
          indent: 10,
          endIndent: 10,
          height: 5,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: allHadeth.length,
            itemBuilder: (context, index) =>
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, HadethDetails.routName,
                        arguments: HadethContent(
                            title: allHadeth[index].title,
                            content: allHadeth[index].content));
                  },
                  child: Text(allHadeth[index].title,
                    textAlign: TextAlign.center,
                  ),
                ),
            separatorBuilder: (context, index) =>
            const Divider(
              thickness: 2,
              indent: 60,
              endIndent: 60,
              height: 5,
            ),
          ),
        )
      ],
    );
  }

  readFile() async {
    String text = await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> allhadeth = text.split('#');


    for (int i = 0; i < allhadeth.length; i++) {
      String singleHadeth = allhadeth[i].trim();
      int indexOfFirstline = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, indexOfFirstline);
      String content = singleHadeth.substring(indexOfFirstline + 1);

      HadethContent hadethContent = HadethContent(
        title: title, content: content,);
      setState(() {
        allHadeth.add(hadethContent);
      });
      print(title);
    }
  }
}

class HadethContent {
  final String title;
  final String content;

  HadethContent({required this.title, required this.content});

}