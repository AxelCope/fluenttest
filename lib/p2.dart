import 'package:fluent_ui/fluent_ui.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int ok = 0;
  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      content: Center(
        child: Column(
          children: [
            Text("Check: $ok"),
            SizedBox(height: 30,),
            Button(child: Text("ADD"), onPressed: (){setState(() {
              ok++;
            });})          ],
        ),
      ),
    );
  }
}
