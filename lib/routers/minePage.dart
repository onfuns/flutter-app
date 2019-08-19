import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/stores/homeStore.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MinePage extends StatefulWidget {
  MinePage({this.title = '测试', this.name});
  final String title;
  final String name;
  _Mine createState() => _Mine();
}

class _Mine extends State<MinePage> {
  @override
  Widget build(BuildContext context) {
    final homeStore = Provider.of<HomeStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('我的 ${widget.title}'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  child: Observer(
                      builder: (_) => Text(
                            'this is a mine page ${homeStore.count}',
                          )),
                )
              ],
            ),
            RaisedButton(
              onPressed: homeStore.add,
              textColor: Colors.white,
              color: Colors.blue,
              child: Text('我的', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
