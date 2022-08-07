
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
	// GamePage({Key key, this.title}) : super(key: key);

	final String title = "GamePage";

	@override
	_GamePageState createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
	int _counter = 0;

	void _incrementCounter() {
		setState(() {
			_counter++;
		});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text(widget.title),
			),
			body: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: <Widget>[
						Text(
							'Test',
						),
						Text(
							'$_counter',
							style: Theme.of(context).textTheme.headline4,
						),
					],
				),
			),
			floatingActionButton: FloatingActionButton(
				onPressed: _incrementCounter,
				tooltip: 'Increment',
				child: Icon(Icons.add),
			), // This trailing comma makes auto-formatting nicer for build methods.
		);
	}
}
