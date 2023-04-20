import 'package:fluent_ui/fluent_ui.dart';
import 'package:fluenttest/p1.dart';
import 'package:fluenttest/p2.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  FluentApp(
      home: const TabNav(),
    );
  }
}



class TabNav extends StatefulWidget {
  const TabNav({Key? key}) : super(key: key);

  @override
  State<TabNav> createState() => _TabNavState();
}

List<NavigationPaneItem> pages = [
  PaneItem(icon: const Icon(FluentIcons.add), body: const Page1()),
  PaneItem(icon: const Icon(FluentIcons.check_list), body: const Page2())
];

class _TabNavState extends State<TabNav> {


  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  NavigationView(
      pane: NavigationPane(
          selected: _currentIndex,
          onChanged: (i) => setState(() => _currentIndex = i),
          items: pages
      ),
    );
  }
}