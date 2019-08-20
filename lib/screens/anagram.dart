import 'package:flutter/material.dart';

class Anagram extends StatefulWidget{
	@override
	AnagramState createState() => AnagramState();
}
class AnagramState extends State<Anagram> {
	@override
	Widget build(BuildContext context){
		return Scaffold(
			appBar: AppBar(
				title: Text('Anagram'),
			),
			body: Center(
				child: Text(
				'It\'s Anagram!',
				textAlign: TextAlign.center,
				style: TextStyle(fontWeight: FontWeight.bold),
				),
			), 
			//body: _buildSuggestions(),
		);
	}
}
