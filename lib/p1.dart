import 'package:fluent_ui/fluent_ui.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
            });})
          ],
        ),
      ),
    );
  }
}
