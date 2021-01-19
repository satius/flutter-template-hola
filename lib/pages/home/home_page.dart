import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hola/providers/home/home_page_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends HookWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    final counter = useProvider(homePageProvider.state).counter;
    final isChecked = false;

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              child: Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'You have pushed the button this many times:',
                      ),
                      Text(
                        '$counter',
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ],
                  ),
                ),
                floatingActionButton: FloatingActionButton(
                  onPressed: () => context.read(homePageProvider).increment(),
                  tooltip: 'Increment',
                  child: Icon(Icons.add),
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green[100],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: isChecked
                            ? Theme.of(context).accentColor
                            : Colors.grey[500],
                        size: 100.0,
                      ),
                      Checkbox(
                        activeColor: Colors.blue,
                        value: isChecked,
                        onChanged: (isCheckedNow) {
                          /* TODO */
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
