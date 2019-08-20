// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'screens/random_words.dart';
import 'screens/anagram.dart';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
			/*
			initialRoute: '/',
			routes:{
				'/': (context) => RandomWords(),
				'/1': (context) => new Anagram(),
			},
			*/
			home: HomePage(),
			theme: ThemeData(
				primaryColor: Colors.orange[200],
			),
    );
  }
}

class HomePage extends StatelessWidget {
	final List<String> _entries = <String> ['Random Words', 'Anagram'];
	final List<Widget> _pages = <Widget> [RandomWords(), Anagram()];
	final _listFont = const TextStyle(fontSize: 18.0);

	Widget _buildPageView( index ){
		final pageController = PageController(
				initialPage:  index,
				);
		final pageView = PageView(
				controller: pageController,
				children: _pages, 
				);
		return pageView;
	}
	Widget _buildList(){
		return ListView.builder(
					padding: const EdgeInsets.all(16.0),
					itemBuilder: (context, i){
						return GestureDetector(
							child: Container(
								height: 50,
								child: Center(
									child: Text(
										_entries[i],
										style: _listFont,
									)
								),
							),
							onTap: () => Navigator.push(
														context,
														MaterialPageRoute(
															builder: (context) => _buildPageView(i),
														)
													),
						);
					},
					itemCount: _entries.length,
					);
	}
  @override
  Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text('Home Page'),
				actions: <Widget>[
				],
			),
			body: _buildList(),
		);
	}
}
