import 'package:flutter/material.dart';

class NavigationBarDemo2Page extends StatefulWidget {
  const NavigationBarDemo2Page({super.key});

  @override
  State<NavigationBarDemo2Page> createState() => _NavigationBarDemo2PageState();
}

class _NavigationBarDemo2PageState extends State<NavigationBarDemo2Page> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.commute), label: 'Commute'),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Label behavior: ${labelBehavior.name}'),
            const SizedBox(height: 10),
            OverflowBar(
              spacing: 10.0,
              overflowAlignment: OverflowBarAlignment.center,
              overflowSpacing: 10.0,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      labelBehavior =
                          NavigationDestinationLabelBehavior.alwaysShow;
                    });
                  },
                  child: const Text('alwaysShow'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      labelBehavior =
                          NavigationDestinationLabelBehavior.onlyShowSelected;
                    });
                  },
                  child: const Text('onlyShowSelected'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      labelBehavior =
                          NavigationDestinationLabelBehavior.alwaysHide;
                    });
                  },
                  child: const Text('alwaysHide'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
